`timescale 1s/1ns
`include "cmos_cells.v"
`include "probador.v"
`include "PCIE_trans.v"
`include "PCIE_Synth.v"

module testbench();
   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire	clk;			// From probador.v
   wire	reset_L;		// From probador.v
   wire	init;			// From probador.v

   wire [1:0]	umbral_MF;	
   wire [3:0]	umbral_VCO;	
   wire [3:0]	umbral_VC1;
   wire [1:0]	umbral_DO;
   wire [1:0]	umbral_D1;
   
   wire [5:0]	data_in_principal;	// From probador.v
   
   wire	push;			// From probador.v
   //wire	pop;			// From probador.v

   wire [5:0] data_out0_cond;	// From transac of PCIE_trans.v, ...
   wire [5:0] data_out1_cond;	// From transac of PCIE_trans.v, ....
   wire [5:0] data_out0_synth;	// From transac of PCIE_trans.v, ...
   wire [5:0] data_out1_synth;	// From transac of PCIE_trans.v, ....

   wire Pausa_MF;		// From transac of PCIE_trans.v, ...

   //wire [5:0] data_out0,data_out1;
   //wire active_out, idle_out, error_out;

   wire active_out_cond, active_out_synth;		// From transac of PCIE_trans.v, ...
   wire idle_out_cond, idle_out_synth;		// From transac of PCIE_trans.v, ...
   wire error_out_cond,	error_out_synth;	// From transac of PCIE_trans.v, ...
   wire Pausa_MF_synth;

   // End of automatics

   probador probador1(/*AUTOINST*/
		      // Outputs	
		      .clk			(clk),
		      .reset_L			(reset_L),
		      .init			(init),
		      .data_in_principal	(data_in_principal),
		      .push			(push),
		      //.pop			(pop),
		     // .umbral		(umbral),
		      // Inputs Cond
		     // .Pausa_MF			(Pausa_MF), // Por ahora no se usa
		      .active_out_synth		(active_out_synth),
		      .error_out_synth		(error_out_synth),
		      .idle_out_synth		(idle_out_synth),
		      .data_out0_synth		(data_out0_synth),
		      .data_out1_synth		(data_out1_synth),
			
              .active_out_cond		(active_out_cond),
		      .error_out_cond		(error_out_cond),
		      .idle_out_cond		(idle_out_cond),
		      .data_out0_cond		(data_out0_cond),
		      .data_out1_cond		(data_out1_cond));
   
   PCIE_trans transac1(/*AUTOINST*/
		      // Outputs	
		      .clk			(clk),
		      .reset_L			(reset_L),
		      .init			(init),
		      .data_in_principal	(data_in_principal),
		      .push			(push),

		      .Pausa_MF			(Pausa_MF),
		      //.umbral		(umbral),
		      // Inputs Cond

		      //.pop 			(pop),		
	              .active_out		(active_out_cond),
		      .error_out		(error_out_cond),
		      .idle_out			(idle_out_cond),
		      .data_out0		(data_out0_cond),
		      .data_out1		(data_out1_cond));
	
   PCIE_Synth transacSynth(/*AUTOINST*/
		      // Outputs	
		      .clk			(clk),
		      .reset_L			(reset_L),
		      .init			(init),
		      .data_in_principal	(data_in_principal),
		      .push			(push),
		      //.pop			(pop),
		      .Pausa_MF			(Pausa_MF_synth),
		      //.umbral		(umbral),
		      // Inputs Cond
		      .active_out		(active_out_synth),
		      .error_out		(error_out_synth),
		      .idle_out			(idle_out_synth),
		      .data_out0		(data_out0_synth),
		      .data_out1		(data_out1_synth));
   
   endmodule 
