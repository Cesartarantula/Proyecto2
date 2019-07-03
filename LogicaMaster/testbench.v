`timescale 1s/1ns
`include "cmos_cells.v"
`include "probador.v"
`include "PCIE_trans.v"
`include "PCIE_Synth.v"

module testbench();
   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire	clk;			// From probador1 of probador.v
   wire	reset_L;		// From probador1 of probador.v
   wire	valid_p0;		// From probador1 of probador.v
   wire	valid_p1;		// From probador1 of probador.v
   
   wire [5:0]	data_p0;	// From probador1 of probador.v
   wire [4:0]	out_p0;		// From transac of PCIE_trans.v, ...
   wire [4:0]	out_p1;		// From transac of PCIE_trans.v, ...
   wire	pause_VC0P0;		// From transac of PCIE_trans.v, ...
   wire	pause_VC1P1;		// From transac of PCIE_trans.v, ...
   
   wire [3:0]	umbralA;	// From probador1 of probador.v
   wire [3:0]	umbralB;	// From probador1 of probador.v
   

   wire [4:0]	out_p0E;	// From transac of PCIE_trans.v, ...
   wire [4:0]	out_p1E;	// From transac of PCIE_trans.v, ...
   wire	pause_VC0P0E;		// From transac of PCIE_trans.v, ...
   wire	pause_VC1P1E;		// From transac of PCIE_trans.v, ...
  
   wire	init,idle_out,error_out,active_out,idle_out_E,error_out_E,active_out_E;
   wire [1:0] umbral_MF, umbral_D0, umbral_D1; 
   wire [3:0] umbral_VC0, umbral_VC1; 
   wire [13:0]	umbrales_I;
   
   // End of automatics
  
   probador probador1(/*AUTOINST*/
		      // Outputs
		      .clk		(clk),
		      .reset		(reset),
		      .data_p0		(data_p0),
		      .valid_p0		(valid_p0),
		      .data_p1		(data_p1),
		      .valid_p1		(valid_p1),
		      .umbralA		(umbralA),
		      .umbralB		(umbralB),
		      .init (init),
		      // Inputs Cond
		      .out_p1		(out_p1[BUS_SIZE-1:0]),
		      .out_p0		(out_p0[BUS_SIZE-1:0]),
		      .continue_VC0P0	(continue_VC0P0),
		      .continue_VC1P1	(continue_VC1P1),
		      .pause_VC0P0	(pause_VC0P0),
		      .pause_VC1P1	(pause_VC1P1),
		      .active(active),
		      .error(error),
		      .idle(idle),
		      .umbrales_VCFC(umbrales_VCFC),
		      // Inputs Est
		      .out_p1E		(out_p1E[BUS_SIZE-1:0]),
		      .out_p0E		(out_p0E[BUS_SIZE-1:0]),
		      .pause_VC0P0E	(pause_VC0P0E),
		      .pause_VC1P1E	(pause_VC1P1E),
		      .activeE(activeE),
		      .errorE(errorE),
		      .idleE(idleE),
		      .umbrales_VCFCE(umbrales_VCFCE));
   
   PCIE_trans transac(/*AUTOINST*/
		      // Outputs
		      .out_p0		(out_p0[4:0]),
		      .out_p1		(out_p1[4:0]),
		      .pause_VC0P0	(pause_VC0P0),
		      .pause_VC1P1	(pause_VC1P1),
		      .active(active),
		      .error(error),
		      .idle(idle),
		      .umbrales_VCFC(umbrales_VCFC),
		      // Inputs
		      .clk		(clk),
		      .reset		(reset),
		      .valid_p0		(valid_p0),
		      .valid_p1		(valid_p1),
		      .data_p0		(data_p0[5:0]),
		      .data_p1		(data_p1[5:0]),
		      .umbralA		(umbralA[3:0]),
		      .umbralB		(umbralB[3:0]),
		      .init (init));

   PCIE_Synth transacSynth(/*AUTOINST*/
			   // Outputs
			   .out_p0		(out_p0E[4:0]),
			   .out_p1		(out_p1E[4:0]),
			   .pause_VC0P0		(pause_VC0P0E),
			   .pause_VC1P1		(pause_VC1P1E),
			   .active(activeE),
			   .error(errorE),
			   .idle(idleE),
			   .umbrales_VCFC(umbrales_VCFCE),
			   // Inputs
			   .clk			(clk),
			   .data_p0		(data_p0[5:0]),
			   .data_p1		(data_p1[5:0]),
			   .reset		(reset),
			   .umbralA		(umbralA[3:0]),
			   .umbralB		(umbralB[3:0]),
			   .valid_p0		(valid_p0),
			   .valid_p1		(valid_p1),
			   .init(init));
   
   endmodule 
