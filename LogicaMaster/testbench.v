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
   wire	pop_D0;			// From probador.v
   wire	pop_D1;			// From probador.v

   wire	push;			// From probador.v
   wire	pop_D0;			// From probador.v
   wire	pop_D1;			// From probador.v

   wire [5:0] data_out0;	// From transac of PCIE_trans.v, ...
   wire [5:0] data_out1;	// From transac of PCIE_trans.v, ....

   wire active_out;		// From transac of PCIE_trans.v, ...
   wire idle_out;		// From transac of PCIE_trans.v, ...
   wire error_out;		// From transac of PCIE_trans.v, ...
   // End of automatics
  
   probador probador1(/*AUTOINST*/
		      // Outputs	
		      .clk			(clk),
		      .reset			(reset_L),
		      .init			(init),
		      .data_in_principal	(data_in_principal),
		      .push	(push),
		      .pop_DO		(pop_DO),
		      .pop_D1		(pop_D1),
		      .umbralB		(umbralB),
		      // Inputs Cond
		      .active_out	(active_out),
		      .error_out	(error_out),
		      .idle_out		(idle_out),
		      .data_out0	(data_out0),
		      .data_out1	(data_out1));
   
   PCIE_trans transac1(/*AUTOINST*/
		      // Outputs	
		      .clk			(clk),
		      .reset			(reset_L),
		      .init			(init),
		      .data_in_principal	(data_in_principal),
		      .push	(push),
		      .pop_DO		(pop_DO),
		      .pop_D1		(pop_D1),
		      .umbralB		(umbralB),
		      // Inputs Cond
		      .active_out	(active_out),
		      .error_out	(error_out),
		      .idle_out		(idle_out),
		      .data_out0	(data_out0),
		      .data_out1	(data_out1));

   PCIE_Synth transacSynth(/*AUTOINST*/
		      // Outputs	
		      .clk			(clk),
		      .reset			(reset_L),
		      .init			(init),
		      .data_in_principal	(data_in_principal),
		      .push	(push),
		      .pop_DO		(pop_DO),
		      .pop_D1		(pop_D1),
		      .umbralB		(umbralB),
		      // Inputs Cond
		      .active_out	(active_out),
		      .error_out	(error_out),
		      .idle_out		(idle_out),
		      .data_out0	(data_out0),
		      .data_out1	(data_out1));
   
   endmodule 
