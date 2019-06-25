`ifndef dual_port_memory_V
    `define dual_port_memory_V
    `include "../Memoria/dual_port_memory_V"
`endif

//Definicion del fifo de 6 bit
module fifo # ( parameter N=2 , parameter ADDR_WIDTH=8, parameter MEM_SIZE=7 ) (
    input       clk,
    input [5:0] Fifo_Data_in, //Entrada de datos del FIFO
    input       Fifo_wr,      //Indica si se escribe un dato
    input       Fifo_rd,      //Indica si se lee un dato
    input [2:0] umbral_vacio, // Umbrales de vacio y lleno
    input [2:0] umbral_lleno, // son manejados por una tabla externa
    input       reset,

    output     [5:0] Fifo_data_out, 	//Salida de datos
    output reg       Fifo_empty, 	//Indica si el FIFO esta vacio
    output reg       Fifo_full, 	//Indica si el FIFO esta lleno
    output reg [N-1:0] almost_empty,
    output reg [N-1:0] almost_full,
    output reg       ERROR	//Bit de error, ocurre cuando se 
                                    //una senal de escritura cuando 
                                    //el fifo esta lleno
);

//Registros Internos
reg [3:0] num_mem; //Indica cuantos espacios llenos hay en la memoria
reg [2:0] wr_ptr, rd_ptr; 

always @(posedge clk)//Aqui se determina si el fifo esta lleno o no
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

always @(*) //Envia la orden de lectura/escritura a la memoria
        if (Fifo_wr) 
        begin:push
            write = 1;
            read  = 0;
        end 
        else if (Fifo_rd) 
        begin:pop
            write = 0;
            read  = 1;
        end
        else 
        begin:nothing
            write = 0;
            read  = 0;
        end

    always @(posedge CLK) //Determina si ocurrio un error.
        if (Fifo_full == 1 && Fifo_wr == 1) ERROR <= 1;
        else ERROR <= 0;