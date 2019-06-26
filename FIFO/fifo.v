/*`ifndef dual_port_memory_V
    `define dual_port_memory_V
    `include "../Memoria/dual_port_memory_V"
`endif
*/
`include "dual_port_memory.v"

//Definicion del fifo de 6 bit
module fifo # ( parameter N=2 , parameter ADDR_WIDTH=8, parameter MEM_SIZE=7 ) 
(
    //Entradas
    input       clk,
    input       reset,
    input [5:0] Fifo_Data_in, //Entrada de datos del FIFO
    input       Fifo_wr,      //Indica si se escribe un dato
    input       Fifo_rd,      //Indica si se lee un dato

    //input [2:0] umbral_vacio, // Umbrales de vacio y lleno
    //input [2:0] umbral_lleno, // son manejados por una tabla externa

    //Salidas
    output     [5:0] Fifo_data_out, 	//Salida de datos
    output reg       Fifo_empty, 	//Indica si el FIFO esta vacio
    output reg       Fifo_full, 	//Indica si el FIFO esta lleno
    output reg [N-1:0] almost_empty,
    output reg [N-1:0] almost_full,
    output reg       ERROR	//Bit de error, se da cuando se da una senal de escritura con el fifo esta lleno.
);

//Registros Internos
	reg [3:0] num_mem; //Indica cuantos espacios llenos hay en la memoria
	reg [ADDR_WIDTH-1:0] wr_ptr, rd_ptr;  // dirección de escribir,  // dirección de lectura


//Cables de Logica Externa
   wire [ADDR_WIDTH-1:0] iReadAddress; // dirección de leer
   wire almost_full, almost_empty,iWriteEnable,iReadEnable;ç

   wire [ADDR_WIDTH-1:0] 			  iDataIn;


// Para la lógica de push y pop se debe saber que al realizar un pop se lee el dato de la memoria 
//y en esa posición se escribe un 0 para indicar que se encuentra libre para ser utilizada cuando 
//se realice un pop

memoria canal(/*AUTOINST*/
	       // Outputs
	       .data_out		(oDataOut),
	       // Inputs
	       .clk			(Clock),
	       .Fifo_rd			(iReadEnable),
	       .Fifo_wr			(iWriteEnable), 
	       .data_in			(iDataIn),
	       .addressR		(iReadAddress),
	       .addressW		(iWriteAddress));

//Aqui se determina si el fifo esta lleno o no
always @(posedge clk)
	if (~reset) begin
      	//Estado Inicial
		Fifo_empty<=0;
		Fifo_full<=0;
		Fifo_data_out<=0;
		almost_empty<=0;
		almost_full<=0;
		ERROR<=0;
    	end
        if (num_mem == 0) begin
            Fifo_empty <= 1;
            Fifo_full  <= 0;
        end
        else if (num_mem == 4) begin
            Fifo_empty <= 0;
            Fifo_full  <= 1;
            end
        else begin
            Fifo_empty <= 0;
            Fifo_full  <= 0;
        end

//Envia la orden de escritura/lectura a la memoria
always @(*) 
        if (Fifo_wr) 
        begin:push
            iWriteEnable = 1;
            iReadEnable  = 0;
        end 
        else if (Fifo_rd) 
        begin:pop
            iWriteEnable = 0;
            iReadEnable  = 1;
        end
        else 
        begin:nothing
            iWriteEnable = 0;
            iReadEnable  = 0;
        end

//Determina si ocurrio un error.
    always @(posedge clk) 
        if (Fifo_full == 1 && Fifo_wr == 1) ERROR <= 1;
        else ERROR <= 0;