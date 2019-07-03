//IE-0523 Circuitos Digitales II
//Proyecto2. Módulo Test_bench del Demux.
//Elaborado por el estudiante: César Valverde Zuñiga	A86605
//I Ciclo 2019

`timescale 1ns / 100ps
`include "mux.v"
`include "probador.v"
`include "muxEstructural.v"
`include "cmos_cells.v"

module Test_Bench;

	wire clk, reset_L, valid_in_VC0, valid_in_VC1, valid_out_cond;
	wire [5:0] data_in_VC0, data_in_VC1, dataout_cond, dataout_est;

	//Instancia del módulo Demux Conductual
	mux MUX(
				.clk 	(clk),
				.reset_L(reset_L),
				.valid_in_VC0(valid_in_VC0),
				.valid_in_VC1(valid_in_VC1),
				.valid_out(valid_out_cond),
				.data_in_VC0(data_in_VC0),
				.data_in_VC1 (data_in_VC1),
				.dataout (dataout_cond)
	);

	//Instancia del módulo Demux Estrutural
	muxEstructural MUX_Estr(
				.clk 	(clk),
				.reset_L(reset_L),
				.valid_in_VC0(valid_in_VC0),
				.valid_in_VC1(valid_in_VC1),
				.valid_out(valid_out_estr),
				.data_in_VC0(data_in_VC0),
				.data_in_VC1 (data_in_VC1),
				.dataout (dataout_estr)
	);

	//Instancia del Probador Demux
	probador PDMux(	.clk 	(clk),
				.reset_L(reset_L),
				.valid_in_VC0(valid_in_VC0),
				.valid_in_VC1(valid_in_VC1),
				.valid_out(valid_out),
				.data_in_VC0(data_in_VC0),
				.data_in_VC1 (data_in_VC1),
				.dataout (dataout)
	);


endmodule
