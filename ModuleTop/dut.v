`timescale 1s/1ns
`include "cmos_cells.v"
`include "test.v"
`include "PCIE_trans.v"
`include "PCIE_trans_synth.v"

module testbench();
   
   wire clk;
   wire reset_L;
   wire init;

   wire [1:0]   umbral_MF;
   wire [3:0]   umbral_VCO;
   wire [3:0]   umbral_VC1;
   wire [1:0]   umbral_DO;
   wire [1:0]   umbral_D1;
   
   wire [5:0]  data_in_principal;
   
   wire push;
   wire pop_D0;
   wire pop_D1;

   wire [5:0] data_out0_cond;
   wire [5:0] data_out1_cond;
   wire active_out_cond;
   wire idle_out_cond;
   wire error_out_cond;
   wire Pausa_MF_cond, Pausa_MF_synth;
   
   probador probador1(/*AUTOINST*/
                      // Outputs
                      .clk(clk),
                      .reset_L(reset_L),
                      .init(init),
                      .data_in_principal(data_in_principal),
                      .push(push),
                      .pop_D0(pop_D0),
                      .pop_D1(pop_D1),
            // .umbral(umbral),
                      // Inputs Cond
                      .active_out(active_out),
                      .error_out(error_out),
                      .idle_out(idle_out),
                      .data_out0(data_out0),
                      .data_out1(data_out1),
                      .Pausa_MF(Pausa_MF_cond));
   
   PCIE_trans PCIE_trans(/*AUTOINST*/
		      // Outputs	
		      .clk			(clk),
		      .reset_L			(reset_L),
		      .init			(init),
		      .data_in_principal	(data_in_principal),
		      .push	(push),
		      .pop_D0		(pop_D0),
		      .pop_D1		(pop_D1),
		      //.umbral		(umbral),
		      // Inputs Cond
		      .active_out	(active_out_cond),
		      .error_out	(error_out_cond),
		      .idle_out		(idle_outcond),
		      .data_out0	(data_out0_cond),
		      .data_out1	(data_out1_cond),
		      .Pausa_MF(Pausa_MF_cond));

   PCIE_trans_synth PCIE_trans_synth(
		      // Outputs	
		      .clk			(clk),
		      .reset_L			(reset_L),
		      .init			(init),
		      .data_in_principal	(data_in_principal),
		      .push	(push),
		      .pop_D0		(pop_D0),
		      .pop_D1		(pop_D1),
		      //.umbral		(umbral),
		      // Inputs Cond
		      .active_out	(active_out_synth),
		      .error_out	(error_out_synth),
		      .idle_out		(idle_out_synth),
		      .data_out0	(data_out0_synth),
		      .data_out1	(data_out1_synth),
		      .Pausa_MF(Pausa_MF_synth)); 
		      
   
   endmodule 
