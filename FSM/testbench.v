//IE-0523 Circuitos Digitales II
//Proyecto1. Módulo Test_bench de la FSM.
//Elaborado por el estudiante: César Valverde Zuñiga	A86605		
//I Ciclo 2019

`timescale 1s / 1s
`include "probador.v"
`include "fsm_ControlEstructural.v"
`include "fsm_Control.v"
`include "cmos_cells.v"

//Módulo Banco de Pruebas
module testbench;
   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire	[4:0] FIFO_error;	// From prob of probador.v
   wire [4:0] FIFO_empty; 	// From fsm of fsmControl.v
   wire	active__condu;		// From fsm of fsmControl.v
   wire	clk;			// From prob of probador.v
   wire	error_condu;		// From fsm of fsmControl.v
   wire	idle_condu;		// From fsm of fsmControl.v
   wire	init;			// From prob of probador.v
   wire	reset_L;		// From prob of probador.v
   wire	[1:0] umbral_MF;	// From fsm of fsmControl.v
   wire	[1:0] umbral_D0;	// From fsm of fsmControl.v
   wire	[1:0] umbral_D1;	// From fsm of fsmControl.v
   wire	[3:0] umbral_VC0;	// From fsm of fsmControl.v
   wire	[3:0] umbral_VC1;	// From fsm of fsmControl.v
   wire	[13:0] umbrales_I_condu;// From fsm of fsmControl.v
   wire [13:0] umbrales_I_estru;// From fsm of fsmControl.v
   wire active_estru;		// From fsm of fsmControl.v
   wire	idle_estru;		// From fsm of fsmControl.v
   wire	error_estru;		// From fsm of fsmControl.v
   // End of automatics

   //Instancia FSM Conductual
   fsmControl fsmCondu(/*AUTOINST*/
		  // Outputs
		  .umbrales_I 	(umbrales_I_condu),
		  .active_out 	(active_condu),
		  .idle_out	(idle_condu),
		  .error_out	(error_condu),
		  // Inputs
		  .clk		(clk),
		  .reset_L	(reset_L),
		  .init		(init),
	          .umbral_MF	(umbral_MF),
		  .umbral_VC0	(umbral_VC0),
                  .umbral_D0	(umbral_D0),
		  .umbral_VC1	(umbral_VC1),
                  .umbral_D1	(umbral_D1),
		  .FIFO_error	(FIFO_error),
		  .FIFO_empty	(FIFO_empty));
  //Instancia FSM Estructural
  fsmControlEstructural fsmEstru(/*AUTOINST*/
		  // Outputs
		  .umbrales_I	(umbrales_I_estru),
		  .active_out	(active_estru),
		  .idle_out	(idle_estru),
		  .error_out	(error_estru),
		  // Inputs
		  .clk		(clk),
		  .reset_L	(reset_L),
		  .init		(init),
		  .umbral_MF	(umbral_MF),
		  .umbral_VC0	(umbral_VC0),
                  .umbral_D0	(umbral_D0),
		  .umbral_VC1	(umbral_VC1),
                  .umbral_D1	(umbral_D1),
		  .FIFO_error	(FIFO_error),
		  .FIFO_empty	(FIFO_empty));
   
   //Instancia Probador
   probador prob(/*AUTOINST*/
		 // Outputs
		 .clk		(clk),
		 .reset_L		(reset_L),
		 .init		(init),
		 .umbral_MF	(umbral_MF),
		 .umbral_VC0	(umbral_VC0),
                 .umbral_D0	(umbral_D0),
		 .umbral_VC1	(umbral_VC1),
                 .umbral_D1	(umbral_D1),
		 .FIFO_error	(FIFO_error),
		 .FIFO_empty	(FIFO_empty),
		 // Inputs
		 .umbrales_I_condu	(umbrales_I_condu),
		 .active_condu		(active_condu),
		 .idle_condu		(idle_condu),
		 .error_condu		(error_condu),
		 .umbrales_I_estru	(umbrales_I_estru),
		 .active_estru		(active_estru),
		 .idle_estru		(idle_estru),
		 .error_estru		(error_estru));
   
endmodule
