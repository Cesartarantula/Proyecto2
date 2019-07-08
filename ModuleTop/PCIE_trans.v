
//*******************************************************************************************//
//Archivos de los modulos necesarios

`include "fifo.v"
`include "fsm_Control.v"
`include "mux.v"
`include "Demux_D0_D1.v"
`include "demux.v"
`include "ff_d.v"
//*******************************************************************************************//
module PCIE_trans (//Entradas
                   input clk,      //señal de reloj
                   input reset_L, //señal de reset activa en bajo
                   input init,    //señal de init proveniente del probador
                   input [5:0]  data_in_principal,  //datos de entrada
                   input push,    //señal de push que envia el probador                 
                   input pop_D0,  //señal de pop al canal de destino cero
                   input pop_D1,  //señal de pop al canal de destino uno

                   // input [1:0] umbral_MF, 
                   // input [3:0] umbral_VC0,
                   // input [3:0] umbral_VC1, 
                   // input [1:0] umbral_D0, 
                   // input [1:0] umbral_D1,

                  //salidas
                   output [5:0] data_out0, // salida canal destino cero
                   output [5:0] data_out1, // salida canal desitno uno
                   output active_out,  //señal indica sistema en estado activo
                   output idle_out,    //señal indica estado idle
                   output error_out,   //señal indica estado error
                   output Pausa_MF);   //señal de pausa del main fifo
                   
//*******************************************************************************************//
//conexiones internas del top
wire [5:0] Fifo_Data_out_MF, data_in_VC0, data_in_VC1, out_Fifo_Data_out_MF, dataout_VCs;
wire [1:0]Umbral_MF;
wire Almost_Empty_MF, Almost_Full_MF, Pausa_MF, Fifo_Empty_MF, Fifo_Full_MF,Error_Fifo_MF;
wire push_vc0, push_vc1, out_pop_MF;
//*******************************************************************************************//


//*******************************************************************************************//
//registros internos del top
reg pop_MF, Pausa_VC_id, pausaD0D1, pop_vc0, pop_vc1;


//*******************************************************************************************//
//Instanciando modulos
//*******************************************************************************************//
 
// Modulo Main Fifo 
fifo # ( .N(2), .M(2), .ADDR_WIDTH(4)) MainFifo (.clk(clk),
                                                 .reset_L(reset_L),
                                                 .push(push),
                                                 .pop(pop_MF),
                                                 .Fifo_Data_in(data_in_principal),
                                                 .Fifo_Data_out(Fifo_Data_out_MF),
                                                 .Almost_Empty(Almost_Empty_MF),
                                                 .Almost_Full(Almost_Full_MF),
                                                 .Umbral(Umbral_MF),
                                                 .Pausa(Pausa_MF),
                                                 .Fifo_Empty(Fifo_Empty_MF),
                                                 .Fifo_Full(Fifo_Full_MF),
                                                 .Error_Fifo(Error_Fifo_MF));

// FF contempla el retraso entre el MainFifo y el demux, transfiere señal de valid al demux                                                 
ff_d # (.N(1)) ff_d_MF_DVCID (.Data_Out(out_pop_MF),
                              .clk(clk),
                              .reset_L(reset_L),
                              .Data_in(pop_MF)); 

// FF contempla el retraso entre el MainFifo y el demux, transfiere paquete datos al demux                                                 
ff_d # (.N(6)) ff_d_MF_DVCID2 (.Data_Out(out_Fifo_Data_out_MF),
                              .clk(clk),
                              .reset_L(reset_L),
                              .Data_in(Fifo_Data_out_MF));                              
                                                 
// Modulo Demux de pop váliinput según vc_id
demux demux_vc_id ( .clk(clk),
                    .reset_L(reset_L),
                    .valid_in(out_pop_MF),
                    .data_in(Fifo_Data_out_MF),
                    .dataout0(data_in_VC0),
                    .dataout1(data_in_VC1),
                    .valid_0(push_vc0),
                    .valid_1(push_vc1)); 
                    
//VC0: FIFO (6bitsx16)
fifo #(.N(4), .M(4), .ADDR_WIDTH(16)) VC0Fifo (.clk(clk),
                                               .reset_L(reset_L),
                                               .push(push_vc0),
                                               .pop(pop_vc0),
                                               .Fifo_Data_in(data_in_VC0),
                                               .Fifo_Data_out(Fifo_Data_out_VCO),
                                               .Almost_Empty(Almost_Empty_VCO),
                                               .Almost_Full(Almost_Full_VCO),
                                               .Umbral(Umbral_VC0),
                                               .Pausa(Pausa_VC0),
                                               .Fifo_Empty(Fifo_Empty_VC0),
                                               .Fifo_Full(Fifo_Full_VC0),
                                               .Error_Fifo(Error_Fifo_VC0));  
                                               
//VC1: FIFO (6bitsx16)
fifo #(.N(4), .M(4), .ADDR_WIDTH(16)) VC1Fifo (.clk(clk),
                                               .reset_L(reset_L),
                                               .push(push_vc1),
                                               .pop(pop_vc1),
                                               .Fifo_Data_in(data_in_VC1),
                                               .Fifo_Data_out(Fifo_Data_out_VC1),
                                               .Almost_Empty(Almost_Empty_VC1),
                                               .Almost_Full(Almost_Full_VC1),
                                               .Umbral(Umbral_VC1),
                                               .Pausa(Pausa_VC1),
                                               .Fifo_Empty(Fifo_Empty_VC1),
                                               .Fifo_Full(Fifo_Full_VC1),
                                               .Error_Fifo(Error_Fifo_VC1));     
                                               
// Multiplexor posterior a VC0 y VC1
//Tiene una funcion similar a un Round Robin, prioritiza la transferencia
//de datos de VC0.
mux mux1 (  .clk(clk),
            .reset_L(reset_L),
            .valid_in_VC0(pop_vc0),
            .valid_in_VC1(pop_vc1),
            .data_in_VC0(Fifo_Data_out_VCO),
            .data_in_VC1(Fifo_Data_out_VC1),
            .dataout(dataout_VCs),
            .valid_out(push_Demux));                                               
 
 
//*******************************************************************************************//
//Hace pop a Fifo Main
/*always@(posedge clk) begin
    if(!reset_L) begin
        pop_MF<=0;
    end 
    else if(!Fifo_Empty_MF) begin
        pop_MF<=1;
    end 
    else begin
        pop_MF<=0;
    end 
end */

always@(*) begin
    Pausa_VC_id = ~(Pausa_VC0 | Pausa_VC1) ? 1:0;
    pop_MF = Pausa_VC_id & (~Fifo_Empty_MF) ? 1:0;
end 

//assign   pop_MF = (~(Pausa_VC0 | Pausa_VC1)) ? (~(Pausa_VC0 | Pausa_VC1) ? 1:0) : 0;

//*******************************************************************************************//
//Determina pop VC0 y VC1
always@(posedge clk) begin
    if(!reset_L) begin
    pausaD0D1 <= 0;
    pop_vc0 <= 0;
    end
    else begin
   // pausaD0D1 <= Pausa_D0 | Pausa_D1;
    pausaD0D1 <= 0;
    pop_vc0 <= ~Fifo_Empty_VC0 & ~pausaD0D1; 
    pop_vc1 <= Fifo_Empty_VC0 & ~pausaD0D1 & ~Fifo_Empty_VC1; 
    end
end

/*always@(*) begin
    pausaD0D1 = Pausa_D0 | Pausa_D1;
    pop_vc0 = ~Fifo_Empty_VC0 & ~pausaD0D1; 
    pop_vc1 = Fifo_Empty_VC0 & ~pausaD0D1 & ~Fifo_Empty_VC1; 
end*/
                                                 
endmodule


