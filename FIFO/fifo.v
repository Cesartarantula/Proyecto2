`include "dual_port_memory.v"

//Definicion del fifo de 6 bit
module fifo # ( parameter N=2 , parameter ADDR_WIDTH=4) // ( parameter N=4 , parameter ADDR_WIDTH=16) //
(
    //Entradas
    input wire clk,			//viene del probador
    input wire reset_L,			//viene del probador
    input wire valid,      		//Indica si el dato es valido viene del probador
    input wire push,      		//Indica si se escribe un dato 	//push viene del probador
    input wire pop,      		//Indica si se lee un dato  	//pull viene del probador
    input wire [5:0] Fifo_Data_in, 	//Entrada de datos del FIFO viene del probador

    //Salidas
    output [5:0] Fifo_Data_out,		//Salida de datos

   //Salidas de Control
    output reg [N-1:0] Almost_Empty,	//Indica el valor del umbralA
    output reg [N-1:0] Almost_Full,	//Indica el valor del umbralB
    output reg Pausa,
    output reg Fifo_Empty, 	//Indica si el FIFO esta vacio
    output reg Fifo_Full, 	//Indica si el FIFO esta lleno
    output reg Error_Fifo, 	//Bit de error, se da cuando se da una senal de escritura con el fifo esta lleno 
				//ó cuando se quiere hacer una lectura y el fifo esta empty
    output reg valid_out
);

//Registros Internos
    reg [N-1:0] wr_ptr, rd_ptr;  // dirección de escribir,  // dirección de lectura

//Cables de Logica Externa
   /*wire [ADDR_WIDTH-1:0] iReadAddress; // dirección de leer
   wire [ADDR_WIDTH-1:0] iWriteAddress; // dirección de escribir
   //wire iWriteEnable, iReadEnable;
   wire [ADDR_WIDTH-1:0] iDataIn;
*/

dual_port_memory  #(.DATA_WIDTH(6), .ADDR_WIDTH(4), .MEM_SIZE(3)) memoria
(/*AUTOINST*/
	       // Outputs
	       .oDataOut		(Fifo_Data_out),
	       // Inputs
	       .Clock			(clk),
	       .iReadEnable		(pop),
	       .iWriteEnable		(push), 
	       .iDataIn			(Fifo_Data_in),
	       .iReadAddress		(rd_ptr),
	       .iWriteAddress		(wr_ptr));

//Aqui se determina si el fifo esta lleno o no
always @(posedge clk) begin
	if (!reset_L) begin
      		//Estado Inicial
		//Fifo_data_out<=0;
		Fifo_Empty<=1;
		Fifo_Full<=0;
		Almost_Empty<=0;
		Almost_Full<=0;
		Error_Fifo<=0;
		Pausa <= 0;
		//wr_ptr<=0;
		//rd_ptr<=0;
    	end
        else if (wr_ptr == 0) begin
	    Fifo_Empty <= 1;
	    Pausa <= 0;
            Fifo_Full <= 0;
        end
	else if (wr_ptr == 1) begin
            Pausa <= 0;
	    Fifo_Full <= 1; 
        end
	else if(wr_ptr == 2) begin
            Pausa <= 1;
	    Almost_Full <= 1; 
        end
        else if (wr_ptr == 3) begin
            Fifo_Empty <= 0;
            Fifo_Full  <= 1;
            end
        else begin
            Fifo_Empty <= 1;
            Fifo_Full  <= 0;
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
end
 else       if (push) 
        begin
	    wr_ptr<= wr_ptr+2'b01;
        end 
   else     if (pop) 
        begin
	    rd_ptr<= rd_ptr+2'b01;
        end
        if ((push) && (pop)) 
        begin
		wr_ptr<= wr_ptr;
		rd_ptr<= rd_ptr;
        end
end

//Determina si ocurrio un error.
always @(posedge clk) begin
        if (Fifo_Full == 1 && push == 1) Error_Fifo <= 1;
	if (Fifo_Empty == 1 && pop == 1) Error_Fifo <= 1;
        else Error_Fifo <= 0;
end
endmodule