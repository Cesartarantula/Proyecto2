
/////////////////////////////////////////////////////////////////
/* Demux de pop válidos según vc_id 

   Recibe los paquetes provenientes de main fifo, y selecciona
   por cual canal vc_id se transmite dependiendo del valor de
   del bit vc_id en data_in[5]
*/
/////////////////////////////////////////////////////////////////


/*///////////////////////////////////////////////////////////////
Posee un retraso de un ciclo de reloj de los datos de salida
respecto de los datos de entrada
///////////////////////////////////////////////////////////////*/

module demux(input clk,
             input reset_L,
             input valid_in,
             input [5:0] data_in,
             output reg [5:0] dataout0,
             output reg [5:0] dataout1,
             output reg valid_0,
             output reg valid_1);

/////////////////////////////////////////////////////////////////
//Registros Internos
reg selectorL1;

/////////////////////////////////////////////////////////////////
// Logica selector canal de salida
always @(*) begin
    if((!reset_L))begin
    selectorL1 <=0;
    end
    else begin
    selectorL1 <=data_in [5];
    end
end

/////////////////////////////////////////////////////////////////
// Logica asignacion valires de salida y señales de valid
always @(posedge clk) begin
        if((!reset_L))begin
        dataout1<= 0;
        dataout0 <= 0;
        valid_0 <= 0;
        valid_1 <= 0;
        end
        else if(valid_in)begin
                if(selectorL1)begin
                    dataout1 <= data_in;
                    valid_1 <=1;
                    valid_0 <=0;

                end
                else begin
                    dataout0 <= data_in;
                    valid_0 <= 1;
                    valid_1 <=0;
                end
        end
        else begin
        dataout1<= 0;
        dataout0 <= 0;
        valid_0 <= 0;
        valid_1 <= 0;
        end
end 
        
endmodule

// Fin modulo demux
/////////////////////////////////////////////////////////////////

