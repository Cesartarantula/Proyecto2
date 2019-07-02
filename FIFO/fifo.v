`include "dual_port_memory.v"

//Definicion del fifo de 6 bit
module fifo # ( parameter N=2 , parameter ADDR_WIDTH=4) 
(
    //Entradas
    input wire clk,
    input wire reset_L,
    input wire valid,      		//Indica si el dato es valido
    input wire push,      		//Indica si se escribe un dato 	//push
    input wire pop,      		//Indica si se lee un dato  	//pull
    input wire [5:0] Fifo_Data_in, 	//Entrada de datos del FIFO

    //Salidas
    output [5:0] Fifo_data_out,		//Salida de datos

   //Salidas de Control
    output reg [N-1:0] almost_empty,	//Indica el valor del umbralA
    output reg [N-1:0] almost_full,	//Indica el valor del umbralB
    output reg PAUSE,
    output reg CONTINUE	,
    output reg Fifo_empty, 	//Indica si el FIFO esta vacio
    output reg Fifo_full, 	//Indica si el FIFO esta lleno
    output reg error_fifo, 	//Bit de error, se da cuando se da una senal de escritura con el fifo esta lleno 
				//ó cuando se quiere hacer una lectura y el fifo esta empty
    output reg valid_out
);

//Registros Internos
    reg [3:0] num_mem; //Indica cuantos espacios llenos hay en la memoria.
    reg [ADDR_WIDTH-1:0] wr_ptr, rd_ptr;  // dirección de escribir,  // dirección de lectura
    //reg PAUSE, CONTINUE;  // Pausa,  // Continue

//Cables de Logica Externa
   /*wire [ADDR_WIDTH-1:0] iReadAddress; // dirección de leer
   wire [ADDR_WIDTH-1:0] iWriteAddress; // dirección de escribir
   //wire iWriteEnable, iReadEnable;
   wire [ADDR_WIDTH-1:0] iDataIn;
*/
// Para la lógica de push y pop se debe saber que al realizar un pop se lee el dato de la memoria 
//y en esa posición se escribe un 0 para indicar que se encuentra libre para ser utilizada cuando 
//se realice un pop

dual_port_memory  #(.DATA_WIDTH(6), .ADDR_WIDTH(4), .MEM_SIZE(3)) memoria
(/*AUTOINST*/
	       // Outputs
	       .oDataOut		(Fifo_data_out),
	       // Inputs
	       .Clock			(clk),
	       .iReadEnable		(pop),
	       .iWriteEnable		(push), 
	       .iDataIn			(Fifo_Data_in),
	       .iReadAddress		(rd_ptr),
	       .iWriteAddress		(wr_ptr));

//Aqui se determina si el fifo esta lleno o no
always @(posedge clk) begin
	if (~reset_L) begin
      		//Estado Inicial
		//Fifo_data_out<=0;
		Fifo_empty<=0;
		Fifo_full<=0;
		almost_empty<=0;
		almost_full<=0;
		error_fifo<=0;
		num_mem<=0;
		wr_ptr<=0;
		rd_ptr<=0;
    	end
        if (wr_ptr == 0) begin
            Fifo_empty <= 1;
            Fifo_full  <= 0;
        end
	else if (wr_ptr == 1) begin
            CONTINUE = 1;
            PAUSE    = 0;
	    almost_empty <= 1; 
        end
	else if(wr_ptr == 3) begin
            CONTINUE <= 0;
            PAUSE    <= 1;
	    almost_full <= 1; 
        end
        else if (wr_ptr == 4) begin
            Fifo_empty <= 0;
            Fifo_full  <= 1;
            end
        else begin
            Fifo_empty <= 0;
            Fifo_full  <= 0;
        end
end
//Envia la orden de escritura/lectura a la memoria
always @(posedge clk) begin
        if (push) 
        begin:Fifo_wr
            //iWriteEnable = 1;
	    wr_ptr<= wr_ptr+3'b001;
        end 
        if (pop) 
        begin:Fifo_rd
            //iReadEnable  = 1;
	    rd_ptr<= rd_ptr+3'b001;
        end
        if ((push) && (pop)) 
        begin:double
		wr_ptr<= wr_ptr;
		rd_ptr<= rd_ptr;
            //iWriteEnable = 1;
            //iReadEnable  = 1;
        end
	else 
	begin:nothing
		num_mem<= num_mem;
            //iWriteEnable = 0;
            //iReadEnable  = 0;
        end
end
//Determina si ocurrio un error.
    always @(posedge clk) begin
        if (Fifo_full == 1 && push == 1) error_fifo <= 1;
	if (Fifo_empty == 1 && pop == 1) error_fifo <= 1;
        else error_fifo <= 0;
end
endmodule