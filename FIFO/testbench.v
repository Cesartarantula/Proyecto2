`timescale 1s/1ns
`include "probador.v"
`include "fifo.v"
`include "fifoSynth.v"
`include "cmos_cells.v"

module testbench();
   
   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire	 	clk;			// From prob of probador.v
   wire [5:0]	Fifo_Data_in;		// From prob of probador.v
   wire		Pausa;			// From each of fifo.v
   wire [5:0]	Fifo_Data_out;		// From each of fifo.v
   wire		Fifo_Empty;		// From each of fifo.v
   wire		pop;			// From prob of probador.v
   wire		push;			// From prob of probador.v
   wire		reset_L;		// From prob of probador.v
   wire		valid;			// From prob of probador.v
   wire		valid_out;		// From each of fifo.v
   //wire		valid_outE;		// From each of fifo.v
   //wire [5:0]	Fifo_data_outE;		// From each of fifo.v
   //wire		Fifo_emptyE;		// From each of fifo.v
   //wire		PAUSEE;			// From each of fifo.v
  // wire		CONTINUEE;		// From each of fifo.v
   // End of automatics

   fifo fifo1 (/*AUTOINST*/
	      // Outputs
	      .Pausa			(Pausa),
	      .Fifo_Empty		(Fifo_Empty),
	      .Fifo_Data_out		(Fifo_Data_out),
	      .valid_out		(valid_out),
	      // Inputs
	      .clk			(clk),
	      .reset_L			(reset_L),
	      .pop			(pop),
	      .push			(push),
	      .Fifo_Data_in		(Fifo_Data_in),
	      .valid (valid));
   
    fifoSynth fifo1Synth (/*AUTOINST*/
	      // Outputs
	      .Pausa			(Pausa),
	      .Fifo_Empty		(Fifo_Empty),
	      .Fifo_Data_out		(Fifo_Data_out),
	      .valid_out		(valid_out),
	      // Inputs
	      .clk			(clk),
	      .reset_L			(reset_L),
	      .pop			(pop),
	      .push			(push),
	      .Fifo_Data_in		(Fifo_Data_in),
	      .valid (valid));
   
   probador prob(/*AUTOINST*/
		 // Outputs
		 .clk			(clk),
	      	.reset_L		(reset_L),
	      	.pop			(pop),
	      	.push			(push),
	      	.Fifo_Data_in		(Fifo_Data_in),
	      	.valid (valid),
		 // Inputs Cond / Estructural
		.Pausa			(Pausa),
	      	.Fifo_Empty		(Fifo_Empty),
	      	.Fifo_Data_out		(Fifo_Data_out),
	      	.valid_out		(valid_out)
);
   
   endmodule 
