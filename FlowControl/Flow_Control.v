//IE-0523 Circuitos Digitales II
//Proyecto2. Flow Control.
//Elaborado por: César Valverde Zuñiga	A86605		
//I Ciclo 2019

// Este módulo genera las señales de empty=vacío full=lleno, generando señales de 
// PAUSA o CONTINUE para administar el flujo de datos en las (Memorias) PILAS.

//Existe un flow control para cada tipo de FIFO, es decir que hay un chip de Flow control dentrO.
module flow_control(
    input       almost_empty,
    input       almost_full,
    input       Fifo_empty,
    input       Fifo_full,
    input       error_in,

    output     Fifo_empty_out,
    output     Fifo_full_out,
    output reg PAUSE,
    output reg CONTINUE,
    output ERROR_out
);
    //Propaga la señal recibida
    assign ERROR_out      = error_in;
    assign Fifo_empty_out = Fifo_empty;
    assign Fifo_full_out  = Fifo_full;

    always @(*)
        if(almost_empty == 1) begin
            CONTINUE = 1;
            PAUSE    = 0;  
        end

        else if(almost_full == 1) begin
            CONTINUE = 0;
            PAUSE    = 1;
        end
        else begin
            CONTINUE = 0;
            PAUSE    = 0;
        end

endmodule