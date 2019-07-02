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
   wire		CONTINUE;		// From each of fifo.v
   wire		PAUSE;			// From each of fifo.v
   wire [5:0]	Fifo_data_out;		// From each of fifo.v
   wire		Fifo_empty;		// From each of fifo.v
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
	      .PAUSE			(PAUSE),
	      .CONTINUE			(CONTINUE),
	      .Fifo_empty		(Fifo_empty),
	      .Fifo_data_out		(Fifo_data_out),
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
	      .PAUSE			(PAUSE),
	      .CONTINUE			(CONTINUE),
	      .Fifo_empty		(Fifo_empty),
	      .Fifo_data_out		(Fifo_data_out),
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
		 .push			(push),
		 .pop			(pop),
		 .Fifo_Data_in		(Fifo_Data_in),
		 .valid			(valid),
		 // Inputs Cond
		 .Fifo_empty		(Fifo_empty),
		 .Fifo_data_out		(Fifo_data_out),
		 .CONTINUE		(CONTINUE),
		 .PAUSE			(PAUSE),
		 .valid_out		(valid_out)
		 // Inputs Est
		 /*.Fifo_data_outE	(Fifo_data_outE),
		 .CONTINUEE		(CONTINUEE),
		 .PAUSE			(PAUSEE),
		 .valid_outE		(valid_outE),
		 .Fifo_emptyE		(Fifo_emptyE)
		 */
);
   
   endmodule 
