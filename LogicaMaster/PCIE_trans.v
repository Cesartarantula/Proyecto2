`include"fifo.v"
`include"fsmControl.v"
`include"mux.v"
`include"Demux_D0_D1.v"
`include"demux.v"

module PCIE_trans ( input clk,
                    input reset_L,
                    input init,
             	    input [1:0] umbral_MF, 	
	     		    input [3:0] umbral_VC0,	
                    input [3:0] umbral_VC1, 	
	                input [1:0] umbral_D0, 	
                    input [1:0] umbral_D1,
					input [5:0]  data_in_principal,
					input       push,
					input       pop_D0,
					input       pop_D1,
					output [5:0] data_out0,
					output [5:0] data_out1,
					output      active_out,
					output      idle_out,
					output      error_out);
   
wire Almost_Empty_MF, Almost_Full_MF, Pausa_MF, Fifo_Empty_MF, Fifo_Full_MF, Error_Fifo_MF;
wire push_vc0, push_vc1, pop_vc0,pop_vc1, push_Demux;
wire [5:0] Fifo_Data_out_MF, data_in_VC0, dataout_VCs, data_in_D0, data_in_D1;
wire Almost_Empty_D1, Almost_Full_D1, Pausa_D1 , Fifo_Empty_D1, Fifo_Full_D1, Error_Fifo_D1;
wire Almost_Empty_D0, Almost_Full_D0, Pausa_D0 , Fifo_Empty_D0, Fifo_Full_D0, Error_Fifo_D0;
wire [13:0] umbrales_I;

reg pop;


fifo #(.N(2), .ADDR_WIDTH(4)) MainFifo (.clk(clk),
										.reset_L.(reset_L),
										.push(push),
										.pop(pop),
										.Fifo_Data_in(data_in_principal),
										.Fifo_Data_out(Fifo_Data_out_MF),
										.Almost_Empty(Almost_Empty_MF),
										.Almost_Full(Almost_Full_MF),
										.Pausa(Pausa_MF),
										.Fifo_Empty(Fifo_Empty_MF),
										.Fifo_Full(Fifo_Full_MF),
										.Error_Fifo(Error_Fifo_MF)); 

demux demux1 (.clk(clk),
			  .reset_L.(reset_L),
			  .valid_in(push),
			  .data_in(Fifo_Data_out_MF),
			  .dataout0(data_in_VC0),
			  .dataout1(data_in_VC1),
			  .valid_0(push_vc0),
			  .valid_1(push_vc1));  

fifo #(.N(4), .ADDR_WIDTH(16)) VC0Fifo (.clk(clk),
										.reset_L.(reset_L),
										.push(push_vc0),
										.pop(pop_vc0),
										.Fifo_Data_in(data_in_VC0),
										.Fifo_Data_out(Fifo_Data_out_VC0),
										.Almost_Empty(Almost_Empty_VC0),
										.Almost_Full(Almost_Full_VC0),
										.Pausa(Pausa_VC0),
										.Fifo_Empty(Fifo_Empty_VC0),
										.Fifo_Full(Fifo_Full_VC0),
										.Error_Fifo(Error_Fifo_VC0)); 

fifo #(.N(4), .ADDR_WIDTH(16)) VC1Fifo (.clk(clk),
										.reset_L.(reset_L),
										.push(push_vc1),
										.pop(pop_vc1),
										.Fifo_Data_in(data_in_VC1),
										.Fifo_Data_out(Fifo_Data_out_VC1),
										.Almost_Empty(Almost_Empty_VC1),
										.Almost_Full(Almost_Full_VC1),
										.Pausa(Pausa_VC1),
										.Fifo_Empty(Fifo_Empty_VC1),
										.Fifo_Full(Fifo_Full_VC1),
										.Error_Fifo(Error_Fifo_VC1)); 

mux mux1 (.clk(clk),
			  .reset_L.(reset_L),
			  .valid_in_VC0(pop_vc0),
			  .valid_in_VC1(pop_vc1),
			  .data_in_VC0(Fifo_Data_out_VC0),
			  .data_in_VC1(Fifo_Data_out_VC1),
			  .dataout(dataout_VCs),
			  .valid_out(push_Demux));

Demux_D0_D1 Demux_D0_D1 (.clk(clk),
			             .reset_L.(reset_L),
			 			 .valid_in(push_Demux),
				   	     .data_in(dataout_VCs),
			  			.dataout0(data_in_D0),
			  			.dataout1(data_in_D1),
			  			.valid_0(push_D0),
			  			.valid_1(push_D1)

fifo #(.N(2), .ADDR_WIDTH(4)) D0Fifo (.clk(clk),
										.reset_L.(reset_L),
										.push(push_D0),
										.pop(pop_D0),
										.Fifo_Data_in(data_in_D0),
										.Fifo_Data_out(data_out0),
										.Almost_Empty(Almost_Empty_D0),
										.Almost_Full(Almost_Full_D0),
										.Pausa(Pausa_D0),
										.Fifo_Empty(Fifo_Empty_D0),
										.Fifo_Full(Fifo_Full_D0),
										.Error_Fifo(Error_Fifo_D0));

fifo #(.N(2), .ADDR_WIDTH(4)) D0Fifo (.clk(clk),
										.reset_L.(reset_L),
										.push(push_D1),
										.pop(pop_D1),
										.Fifo_Data_in(data_in_D1),
										.Fifo_Data_out(data_out1),
										.Almost_Empty(Almost_Empty_D1),
										.Almost_Full(Almost_Full_D1),
										.Pausa(Pausa_D1),
										.Fifo_Empty(Fifo_Empty_D1),
										.Fifo_Full(Fifo_Full_D1),
										.Error_Fifo(Error_Fifo_D1));

fsm_Control fsm_Control1 (.clk(clk),
                          .reset_L(reset_L),
                          .init(init),
             	          .umbral_MF(Almost_Empty_MF), 	
	     		          .umbral_VC0(umbral_VC0),	
                          .umbral_VC1(umbral_VC1), 	
	                      .umbral_D0(umbral_D0), 	
                          .umbral_D1(umbral_D1),
						  .FIFO_error(FIFO_error),
						  .FIFO_empty(FIFO_empty),
						  .umbrales_I(umbrales_I),
						  .active_out(active_out),
                          .idle_out(idle_out),
						  .error_out(error_out));

always@(posedge clk) begin
	if(!Pausa_VC0 || !Pausa_VC1)begin
		if(Fifo_Empty_MF) begin
		pop<=1;
		end
		else begin
		pop<=0;
		end
	end
end

endmodule


