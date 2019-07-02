`include "dual_port_memory.v"

//Definicion del fifo de 6 bit
module fifo # ( parameter N=2 , parameter ADDR_WIDTH=4) 
(
    //Entradas
    input wire clk,
    input wire reset,
    input wire [5:0] Fifo_Data_in, //Entrada de datos del FIFO
    input wire Fifo_wr,      //Indica si se escribe un dato //push
    input wire Fifo_rd,      //Indica si se lee un dato  //pull

    //Salidas
    output reg [5:0] Fifo_data_out,	//Salida de datos
    output reg Fifo_empty, 		//Indica si el FIFO esta vacio
    output reg Fifo_full, 		//Indica si el FIFO esta lleno
    output reg [N-1:0] almost_empty,
    output reg [N-1:0] almost_full,
    output reg error_fifo	//Bit de error, se da cuando se da una senal de escritura con el fifo esta lleno.
);

//Registros Internos
    reg [3:0] num_mem; //Indica cuantos espacios llenos hay en la memoria.
    reg [ADDR_WIDTH-1:0] wr_ptr, rd_ptr;  // dirección de escribir,  // dirección de lectura
    reg PAUSE, CONTINUE;  // Pausa,  // Continue

//Cables de Logica Externa
   wire [ADDR_WIDTH-1:0] iReadAddress; // dirección de leer
   wire [ADDR_WIDTH-1:0] iWriteAddress; // dirección de escribir
   wire iWriteEnable, iReadEnable;
   wire [ADDR_WIDTH-1:0] iDataIn;

// Para la lógica de push y pop se debe saber que al realizar un pop se lee el dato de la memoria 
//y en esa posición se escribe un 0 para indicar que se encuentra libre para ser utilizada cuando 
//se realice un pop

memoria memoria # ( .DATA_WIDTH(6), .ADDR_WIDTH(4), .MEM_SIZE(3) ) 
(/*AUTOINST*/
	       // Outputs
	       .oDataOut		(data_out),
	       // Inputs
	       .Clock			(clk),
	       .iReadEnable		(Fifo_rd),
	       .iWriteEnable		(Fifo_wr), 
	       .iDataIn			(Fifo_Data_in),
	       .iReadAddress		(rd_ptr),
	       .iWriteAddress		(wr_ptr));

//Aqui se determina si el fifo esta lleno o no
always @(posedge clk)
	if (~reset) begin
      		//Estado Inicial
		Fifo_data_out<=0;
		Fifo_empty<=0;
		Fifo_full<=0;
		almost_empty<=0;
		almost_full<=0;
		error_fifo<=0;

		num_mem<=0;
		wr_ptr<=0;
		rd_ptr<=0;
    	end
        if (num_mem == 0) begin
            Fifo_empty <= 1;
            Fifo_full  <= 0;
        end
	else if (num_mem == 1) begin
            CONTINUE = 1;
            PAUSE    = 0;
	    almost_empty <= 1; 
        end
	else if(num_mem == 3) begin
            CONTINUE <= 0;
            PAUSE    <= 1;
	    almost_full <= 1; 
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
            //iReadEnable  = 0;
	    num_mem= num_mem+3'b001;
        end 
        if (Fifo_rd) 
        begin:pop
            //iWriteEnable = 0;
            iReadEnable  = 1;
	    num_mem= num_mem-3'b001;
        end
        if ((Fifo_wr) && (Fifo_rd)) 
        begin:double
            iWriteEnable = 1;
            iReadEnable  = 1;
        end
	else 
	begin:nothing
            iWriteEnable = 0;
            iReadEnable  = 0;
        end

//Determina si ocurrio un error.
    always @(posedge clk) 
        if (Fifo_full == 1 && Fifo_wr == 1) error_fifo <= 1;
	if (Fifo_empty == 1 && Fifo_rd == 1) error_fifo <= 1;
        else error_fifo <= 0;