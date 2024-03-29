
//*******************************************************************************************//
//Archivos de los modulos necesarios

`include "fifo.v"
`include "fsm_Control.v"
`include "mux.v"
`include "Demux_D0_D1.v"
`include "demux.v"
//*******************************************************************************************//				
module PCIE_trans (	//Entradas
			input clk,      	//Señal de reloj
                   	input reset_L, 		//Señal de reset activa en bajo
                   	input init,    		//Señal de init proveniente del probador
			input [5:0]  data_in_principal,  //datos de entrada
			input push,    		//Señal de push que envia el probador                 
			input pop_D0, 
			input pop_D1, 		//Señal de pop 

			//Salidas
			output [5:0] data_out0, //Salida canal destino cero
			output [5:0] data_out1, //Salida canal desitno uno
			output active_out,  	//Señal indica sistema en estado activo
			output idle_out,    	//Señal indica estado idle
			output error_out,   	//Señal indica estado error
			output Pausa_MF);   	//Señal de pausa del main fifo
  
			// input [1:0] umbral_MF, 	
	     		// input [3:0] umbral_VC0,	
                   	// input [3:0] umbral_VC1, 	
	               	// input [1:0] umbral_D0, 	
                   	// input [1:0] umbral_D1,

//*******************************************************************************************//
//conexiones internas del top
wire Fifo_Empty_MF, Pausa_MF, Almost_Empty_MF, Almost_Full_MF, Fifo_Full_MF, Error_Fifo_MF, valid_out_MF;

wire Fifo_Empty_VC0, Pausa_VC0, Almost_Empty_VC0, Almost_Full_VC0, Fifo_Full_VC0, Error_Fifo_VC0, valid_out_VC0;

wire Fifo_Empty_VC1, Pausa_VC1, Almost_Empty_VC1, Almost_Full_VC1, Fifo_Full_VC1, Error_Fifo_VC1, valid_out_VC1;

wire Fifo_Empty_D0, Pausa_D0, Almost_Empty_D0, Almost_Full_D0, Fifo_Full_D0, Error_Fifo_D0, valid_out_D0;

wire Fifo_Empty_D1, Pausa_D1, Almost_Empty_D1, Almost_Full_D1, Fifo_Full_D1, Error_Fifo_D1, valid_out_D1;

wire [5:0] Fifo_Data_out_MF, data_in_VC0, dataout_VCs, data_in_D0, data_in_D1, data_in_VC1, Fifo_Data_out_VC0, Fifo_Data_out_VC1;


wire push_vc0, push_vc1, push_Demux;




wire [13:0] Umbrales_I;
wire [2:0] Umbral_MF;
wire [4:0] Umbral_VC0;
wire [4:0] Umbral_VC1;
wire [2:0] Umbral_D0;
wire [2:0] Umbral_D1;

//*******************************************************************************************//
//registros internos del top
reg Pausa_VC_id,pop_MF;


reg  pausaD0D1, pop_vc0, pop_vc1, FIFO_error, FIFO_empty;

//pop_D0, pop_D1

//*******************************************************************************************//
//Instanciando modulos
//*******************************************************************************************//

// Modulo Main Fifo
fifo #(.N(2), .ADDR_WIDTH(4)) MainFifo (	.clk(clk),             
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
						//.valid_out(valid_out_MF)); 

// Modulo Demux de pop válidos según vc_id
demux demux1 (		.clk(clk),
			.reset_L(reset_L),
			.valid_in(pop_MF),//Modificacion
			.data_in(Fifo_Data_out_MF),
			.dataout0(data_in_VC0),
			.dataout1(data_in_VC1),
			.valid_0(push_vc0),
			.valid_1(push_vc1));  

//VC0: FIFO (6bitsx16)
fifo #(.N(4), .M(2), .ADDR_WIDTH(16)) VC0Fifo (.clk(clk),
						                       .reset_L(reset_L),
						                       //.push(push_vc0),
								       .push(push_vc0),
						                       .pop(pop_vc0),
						                       .Fifo_Data_in(data_in_VC0),
						                       .Fifo_Data_out(Fifo_Data_out_VC0),
						                       .Almost_Empty(Almost_Empty_VC0),
						                       .Almost_Full(Almost_Full_VC0),
						                       .Umbral(Umbral_VC0),
						                       .Pausa(Pausa_VC0),
						                       .Fifo_Empty(Fifo_Empty_VC0),
						                       .Fifo_Full(Fifo_Full_VC0),
						                       .Error_Fifo(Error_Fifo_VC0));
								       //.valid_out(valid_out_VC0)); 

//VC1: FIFO (6bitsx16)
fifo #(.N(4), .M(2), .ADDR_WIDTH(16)) VC1Fifo (		.clk(clk),
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
							//.valid_out(valid_out_VC1));

// Multiplexor posterior a VC0 y VC1
//Tiene una funcion similar a un Round Robin, prioritiza la transferencia
//de datos de VC0.
mux mux1 (	.clk(clk),
		.reset_L(reset_L),
		.valid_in_VC0(pop_vc0),
		.valid_in_VC1(pop_vc1),// (pop_vc1) 
		.data_in_VC0(Fifo_Data_out_VC0),
		.data_in_VC1(Fifo_Data_out_VC1),
		.dataout(dataout_VCs),
		.valid_out(push_Demux));

//Demultiplexor posterior a mux1, de acuerdo al valor del bit 4 transfiere
//los datos por destino 0 o destino 1.
Demux_D0_D1 Demux_D0_D1 (	.clk(clk),
			 	.reset_L(reset_L),
			 	.valid_in(push_Demux),
				.data_in(dataout_VCs),
			  	.dataout0(data_in_D0),
			  	.dataout1(data_in_D1),
			  	.valid_0(push_D0),
			  	.valid_1(push_D1));

//Fifo destino D0
fifo #(.N(2), .M(4), .ADDR_WIDTH(4)) D0Fifo (		.clk(clk),
						        .reset_L(reset_L),
							.push(push_D0),
							.pop(pop_D0),
							.Fifo_Data_in(data_in_D0),
							.Fifo_Data_out(data_out0),
							.Almost_Empty(Almost_Empty_D0),
							.Almost_Full(Almost_Full_D0),
							.Umbral(Umbral_D0),
							.Pausa(Pausa_D0),
							.Fifo_Empty(Fifo_Empty_D0),
							.Fifo_Full(Fifo_Full_D0),
							.Error_Fifo(Error_Fifo_D0));

//Fifo destino D1
fifo #(.N(2), .M(2), .ADDR_WIDTH(4)) D1Fifo (	.clk(clk),
						.reset_L(reset_L),
						.push(push_D1),
						.pop(pop_D1),//Saca el dato apenas llega
						.Fifo_Data_in(data_in_D1),
						.Fifo_Data_out(data_out1),
						.Almost_Empty(Almost_Empty_D1),
						.Almost_Full(Almost_Full_D1),
						.Umbral(Umbral_D1),
						.Pausa(Pausa_D1),
						.Fifo_Empty(Fifo_Empty_D1),
						.Fifo_Full(Fifo_Full_D1),
						.Error_Fifo(Error_Fifo_D1));

//  FSM de control
//• RESET: Estado de reset, cambia a INIT.
//• INIT: Forzado mediante señal “init”, permite la modificación de registros
//  “Umbrales”. Precedencia sobre IDLE, cambia a IDLE.
//• IDLE: Todos los FIFOs están vacíos. Salida “idle” en 1 sólo en este estado.
//  Cambia a ACTIVE al tener un FIFO no vacío.
//• ACTIVE: Modo de transmisión de datos por defecto.
//• ERROR: Escritura y no lectura en uno o más FIFOs cuando están llenos
//  (señal de error). Indicar el ID en “error_full”. Sale hacia RESET únicamente
//   al aplicar reset.

fsmControl fsm_Control1 (	.clk(clk),
                         	.reset_L(reset_L),
                         	.init(init),
             	         	.Umbral_MF(Umbral_MF), 	
	     			.Umbral_VC0(Umbral_VC0),	
                         	.Umbral_VC1(Umbral_VC1), 	
	                  	.Umbral_D0(Umbral_D0), 	
                         	.Umbral_D1(Umbral_D1),
			  	.FIFO_error({Error_Fifo_MF, Error_Fifo_VC0, Error_Fifo_VC1, Error_Fifo_D0, Error_Fifo_D1}),
			  	.FIFO_empty({Fifo_Empty_MF, Fifo_Empty_VC0, Fifo_Empty_VC1, Fifo_Empty_D0, Fifo_Empty_D1}),
			  	.Umbrales_I(Umbrales_I),
			        .active_out(active_out),
                         	.idle_out(idle_out),
			  	.error_out(error_out));

//*******************************************************************************************//
//Hace pop a Fifo Main
always@(*) begin//(posedge clk)
    Pausa_VC_id = ~(Pausa_VC0 | Pausa_VC1) ? 1:0;
    pop_MF = Pausa_VC_id & (~Fifo_Empty_MF) ? 1:0;
end 


//always@(posedge clk) begin
//	if(reset_L) begin
//	pop1 <= 0;
//	end
//	else if(!Pausa_VC0 || !Pausa_VC0)begin
//		if(!Fifo_Empty_MF) begin
//		pop1<=1;
//		end
//		else begin
//		pop1<=0;
//		end
//	end
//	else begin
//	pop1 <=0;
//	end
//end

//*******************************************************************************************//
//Determina pop VC0 y VC1
always@(*) begin
	if(!reset_L) begin
	pausaD0D1 = 0;
	pop_vc0 = 0;
	pop_vc1 = 0;
	end
	else begin //else begin // else if (pop)
	pausaD0D1 = Pausa_D0 | Pausa_D1;
	pop_vc0 = ~Fifo_Empty_VC0 & ~pausaD0D1; 
	pop_vc1 = Fifo_Empty_VC0 & ~pausaD0D1 & ~Fifo_Empty_VC1; 	
	end		
end

//*******************************************************************************************//
//Hace pop a DO o D1 apenas le llega algun dato
/*always@(posedge clk) begin
	if(reset_L) begin
	pop_D0<= 0;
	pop_D1<=0;
	end
	if(push_D0)begin
        pop_D0<=1;
        end 
    if(push_D1) begin
        pop_D1<=1;
        end
    else begin
        pop_D0<= 0;
        pop_D1<=0;
    end
end*/
//always@(*) begin
  //  pop_D0 = ~Fifo_Empty_D0; 
	//pop_D1 = ~Fifo_Empty_D1;
//end

//always@(posedge clk) begin
//	if(!reset_L) begin
  //  		pop_D0 = 0; 
	//	pop_D1 = 0;
	//end
	//else begin
	//pop_D0 = 0; 
	//pop_D1 = 0;
	//end
//end

//*******************************************************************************************//
//Transfiere FIFO_error's y FIFO_empty's la maquina de estados, 
/*always@(posedge clk) begin
	if(!reset_L) begin
	FIFO_error <=0;
	FIFO_empty <=0; // Error_Fifo_MF
	end
	else if(Error_Fifo_MF || Error_Fifo_VC0 || Error_Fifo_VC1 || Error_Fifo_D0 || Error_Fifo_D1 ) begin 
	FIFO_error <=1;
	end	
	else if(Fifo_Empty_MF || Fifo_Empty_VC0 || Fifo_Empty_VC1 || Fifo_Empty_D0 || Fifo_Empty_D1 ) begin 
	FIFO_empty <=1;
	end
	else begin
	FIFO_error <=0;
	FIFO_empty <=0;
	end
end
*/
endmodule


