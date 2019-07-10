`include "dual_port_memory.v"

//Definicion del fifo de 6 bit
module fifo # ( parameter N=4, parameter M=2, parameter ADDR_WIDTH=16) // ( parameter N=4 , parameter ADDR_WIDTH=16) //
(
    	//Entradas
	input wire clk,				//viene del probador
	input wire reset_L,			//viene del probador
	input wire push,      			//Indica si se escribe un dato 	//push viene del probador
	input wire pop,      			//Indica si se lee un dato  	//pull viene del probador
	input wire [5:0] Fifo_Data_in, 		//Entrada de datos del FIFO viene del probador

    	//Salidas
    	output [5:0] Fifo_Data_out,		//Salida de datos

   	//Salidas de Control
    	output reg Almost_Empty,		//Indica el valor del UmbralA
    	output reg Almost_Full,			//Indica el valor del UmbralB
    	output reg [N:0] Umbral,     		//Aqui se guarda el valor de Umbral
    	output reg Pausa,
    	output reg Fifo_Empty, 			//Indica si el FIFO esta vacio
    	output reg Fifo_Full, 			//Indica si el FIFO esta lleno
    	output reg Error_Fifo 			//Bit de error, se da cuando se da una senal de escritura con el fifo esta lleno 
						//ó cuando se quiere hacer una lectura y el fifo esta empty
);

	//Registros Internos
	reg [N-1:0] wr_ptr, rd_ptr, rd_ptr_int, wr_ptr_int;  	// dirección de escribir,  // dirección de lectura
	reg [M:0] num_mem;  		// contador de control

	reg push_int, pop_int;
	reg [5:0] Fifo_Data_in_int;

dual_port_memory  #(.DATA_WIDTH(6), .ADDR_WIDTH(2), .MEM_SIZE(3)) memoria
(/*AUTOINST*/
	       // Outputs
	       .oDataOut		(Fifo_Data_out),
	       // Inputs
	       .Clock			(clk),
	       .iReadEnable		(pop_int),
	       .iWriteEnable		(push_int), 
	       .iDataIn			(Fifo_Data_in_int),
	       .iReadAddress		(rd_ptr_int),
	       .iWriteAddress		(wr_ptr_int));

always@(posedge clk) begin
	if(!reset_L) begin
	push_int <=0;
	pop_int <=0;
	Fifo_Data_in_int <=0;
	rd_ptr_int<=0;
	wr_ptr_int<=0;
	end
	else begin
	push_int <=push;
	pop_int <=pop;
	Fifo_Data_in_int <=Fifo_Data_in;
	rd_ptr_int<=rd_ptr;
	wr_ptr_int<=wr_ptr;
	end
end


//Aqui se determina si el fifo esta lleno o no
always @(posedge clk) begin
	if (!reset_L) begin
      		//Estado Inicial
		Almost_Empty<=0;
		Almost_Full<=0;
		Fifo_Empty<=1;
		Fifo_Full<=0;
		Pausa <= 0;
		Umbral <= 0;
    	end
	else if (push) begin
    		if (M == 2) begin
        		if (num_mem == 0) begin
	    			Almost_Empty <= 0; 
	    			Almost_Full <= 0; 
	    			Fifo_Empty <= 1;
            			Fifo_Full <= 0;
	    			Pausa <= 0;
				Umbral <= num_mem;
        		end
			else if (num_mem == 1) begin
            			Almost_Empty <= 1; 
            			Almost_Full <= 0; 
            			Fifo_Empty <= 0;
            			Fifo_Full <= 0; 
            			Pausa <= 0;
            			Umbral <= num_mem;
	    		end
			else if (num_mem == 2) begin
            			Almost_Empty <= 0; 
            			Almost_Full <= 1; 
            			Fifo_Empty <= 0;
            			Fifo_Full <= 0; 
            			Pausa <= 1;//Pausa anticipada.
            			Umbral <= num_mem;
	    		end
			else if(num_mem == 3) begin
            			Almost_Empty <= 0; 
            			Almost_Full <= 0;
            			Fifo_Empty <= 0;
            			Fifo_Full <= 1; 
            			Pausa <= 1;
             			Umbral <= num_mem;
        		end
        		else if (num_mem == 4) begin
				//Error_Fifo  <= 1;
				Almost_Empty <= 0;
				Almost_Full <= 0;
            			Fifo_Empty <= 0;
            			Pausa <= 1;
            			Fifo_Full  <= 1;
             			Umbral <= num_mem;
            		end
			else if (num_mem == 5) begin
				//Error_Fifo  <= 1;
            			Almost_Empty <= 0;
            			Fifo_Empty <= 0;
            			Pausa <= 1;
            			Fifo_Full  <= 1;
             			Umbral <= num_mem;
            		end
        		else begin
            			Almost_Empty <= 0;
            			Almost_Full <= 0; 
            			Fifo_Empty <= 0;
            			Fifo_Full  <= 0;
            			Pausa <= 0;
				Umbral <= num_mem;
        	end	end
    	   	else if (M == 4) begin
       			if (num_mem == 0) begin
	    			Almost_Empty <= 0; 
	    			Almost_Full <= 0; 
	    			Fifo_Empty <= 1;
            			Fifo_Full <= 0;
	    			Pausa <= 0;
				Umbral <= num_mem;
        		end
        		else if (num_mem == 4) begin
            			Almost_Empty <= 1; 
            			Almost_Full <= 0; 
            			Fifo_Empty <= 0;
            			Fifo_Full <= 0; 
            			Pausa <= 0;
            			Umbral <= num_mem;
	    		end
            		else if(num_mem == 12) begin
                		Almost_Empty <= 0;
                		Almost_Full <= 1; 
                		Fifo_Empty <= 0;
                		Fifo_Full <= 0;
                		Pausa <= 1;
            			Umbral <= num_mem;
            		end
            		else if(num_mem == 13) begin
                		Almost_Empty <= 0; 
                		Almost_Full <= 1; 
                		Fifo_Empty <= 0;
                		Fifo_Full <= 0; 
                		Pausa <= 1;
				Umbral <= num_mem;
            		end
            		else if(num_mem == 14) begin
                		Almost_Empty <= 0; 
                		Almost_Full <= 1; 
                		Fifo_Empty <= 0;
                		Fifo_Full <= 0; 
                		Pausa <= 1;
				Umbral <= num_mem;
            		end
            		else if(num_mem == 15) begin
                		Almost_Empty <= 0; 
                		Almost_Full <= 1;
                		Fifo_Empty <= 0;
                		Fifo_Full <= 0; 
                		Pausa <= 1;
				Umbral <= num_mem;
             		end
            		else if (num_mem == 16) begin
                		Almost_Empty <= 0;
                		Almost_Full <= 0;
                		Fifo_Empty <= 0;
                		Fifo_Full  <= 1;
                		Pausa <= 1;
				Umbral <= num_mem;
            		end
            		else begin
            			Almost_Empty <= 0;
            			Almost_Full <= 0; 
            			Fifo_Empty <= 0;
            			Fifo_Full  <= 0;
            			Pausa <= 0;
				Umbral <= num_mem;
        		end
        	end
	end
	else if (pop) begin
    		if (M == 2) begin
        		if (num_mem == 0) begin
				//Error_Fifo  <= 1;
	    			Almost_Empty <= 0; 
	    			Almost_Full <= 0; 
	    			Fifo_Empty <= 1;
            			Fifo_Full <= 0;
	    			Pausa <= 0;
				Umbral <= num_mem;
        		end
			else if (num_mem == 1) begin
            			Almost_Empty <= 1; 
            			Almost_Full <= 0; 
            			Fifo_Empty <= 0;
            			Fifo_Full <= 0; 
            			Pausa <= 0;
            			Umbral <= num_mem;
	    		end
			else if(num_mem == 3) begin
            			Almost_Empty <= 0; 
            			Almost_Full <= 1;
            			Fifo_Empty <= 0;
            			Fifo_Full <= 0; 
            			Pausa <= 1;
             			Umbral <= num_mem;
        		end
        		else if (num_mem == 4) begin
				Almost_Empty <= 0;
				Almost_Full <= 0;
            			Fifo_Empty <= 0;
				Fifo_Full  <= 1;
            			Pausa <= 0;
             			Umbral <= num_mem;
            		end
        		else begin
            			Almost_Empty <= 0;
            			Almost_Full <= 0; 
            			Fifo_Empty <= 0;
            			Fifo_Full  <= 0;
            			Pausa <= 0;
				Umbral <= num_mem;
        	end	end
    	   	else if (M == 4) begin
       			if (num_mem == 0) begin
	    			Almost_Empty <= 0; 
	    			Almost_Full <= 0; 
	    			Fifo_Empty <= 1;
            			Fifo_Full <= 0;
	    			Pausa <= 0;
				Umbral <= num_mem;
        		end
        		else if (num_mem == 4) begin
            			Almost_Empty <= 1; 
            			Almost_Full <= 0; 
            			Fifo_Empty <= 0;
            			Fifo_Full <= 0; 
            			Pausa <= 0;
            			Umbral <= num_mem;
	    		end
            		else if(num_mem == 12) begin
                		Almost_Empty <= 0;
                		Almost_Full <= 1; 
                		Fifo_Empty <= 0;
                		Fifo_Full <= 0;
                		Pausa <= 1;
				Umbral <= num_mem;
            		end
            		else if(num_mem == 13) begin
                		Almost_Empty <= 0; 
                		Almost_Full <= 1; 
                		Fifo_Empty <= 0;
                		Fifo_Full <= 0; 
                		Pausa <= 1;
				Umbral <= num_mem;
            		end
            		else if(num_mem == 14) begin
                		Almost_Empty <= 0; 
                		Almost_Full <= 1; 
                		Fifo_Empty <= 0;
                		Fifo_Full <= 0; 
                		Pausa <= 1;
				Umbral <= num_mem;
            		end
            		else if(num_mem == 15) begin
                		Almost_Empty <= 0; 
                		Almost_Full <= 1;
                		Fifo_Empty <= 0;
                		Fifo_Full <= 0; 
                		Pausa <= 1;
				Umbral <= num_mem;
             		end
            		else if (num_mem == 16) begin
                		Almost_Empty <= 0;
                		Almost_Full <= 0;
                		Fifo_Empty <= 0;
                		Fifo_Full  <= 1;
                		Pausa <= 1;
				Umbral <= num_mem;
            		end
            		else begin
            			Almost_Empty <= 0;
            			Almost_Full <= 0; 
            			Fifo_Empty <= 0;
            			Fifo_Full  <= 0;
            			Pausa <= 0;
				Umbral <= num_mem;
        		end
        	end
	end
	else if ((push) && (pop)) begin
					//wr_ptr<= wr_ptr+1;
					//rd_ptr<= rd_ptr+1;
					num_mem<=num_mem;
					Umbral <= num_mem;
       	end
end

//Envia la orden de escritura/lectura a la memoria
// Para la lógica de push y pop se debe saber que al realizar un pop se lee el dato de la memoria 
//y en esa posición se escribe un 0 para indicar que se encuentra libre para ser utilizada cuando 
//se realice un pop
always @(posedge clk) begin
	if (!reset_L) begin
		wr_ptr<=0;
		rd_ptr<=0;
		num_mem<=0;
	end
	else if (push && pop) begin
		num_mem<=num_mem;
		wr_ptr<= wr_ptr+1;
		rd_ptr<= rd_ptr+1;
        end
 	else if (push) begin
			if (num_mem==4) begin
                    			num_mem<=num_mem;
 			end
			else begin 
                    		num_mem<=num_mem+1;
                    		wr_ptr<=wr_ptr+1;
		    	end
        end 
   	else if (pop) begin
                	    if (num_mem==0) begin
                    			num_mem<=num_mem;
        	    	    end
			    else begin 
                    		    	num_mem<=num_mem-1;
                    			rd_ptr<= rd_ptr+1;
		    	    end
        end
	else begin
		num_mem<=num_mem;
		wr_ptr<= wr_ptr;
		rd_ptr<= rd_ptr;
        end
end

//Determina si ocurrio un error.
always @(posedge clk) begin
    if (M == 2) begin
        if (num_mem == 4 && push)begin
            Error_Fifo <= 1; 
        end 
	else if (num_mem == 0 && pop == 1 && push == 0) begin 
            							Error_Fifo <= 1;
        end
        else begin
            Error_Fifo <= 0;
        end
    end
    else if (M == 4) begin
        if (num_mem == 16 && push)begin
            Error_Fifo <= 1; 
        end 
	else if (num_mem == 0 && pop == 1 && push == 0) begin 
            							Error_Fifo <= 1;
        end
        else begin
            Error_Fifo <= 0;
        end
	end
end
endmodule
