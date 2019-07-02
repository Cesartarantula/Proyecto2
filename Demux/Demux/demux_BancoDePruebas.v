//IE-0523 Circuitos Digitales II
//Proyecto2. Módulo Test_bench del Demux.
//Elaborado por el estudiante: César Valverde Zuñiga	A86605
//I Ciclo 2019

`timescale 1ns / 100ps
`include "demux.v"
`include "probador.v"
`include "demuxEstructural.v"
`include "cmos_cells.v"

module Test_Bench;

	wire reset_L, clk, valid_in, valid_0, valid_1;
	wire [5:0] dataout0, dataout1, data_in;

	//Instancia del módulo Demux Conductual
	demux DM(
				.clk 	(clk),
				.reset_L(reset_L),
				.valid_in(valid_in),
				.valid_0(valid_0),
				.valid_1(valid_1),
				.data_in (data_in),
				.dataout0 (dataout0),
				.dataout1 (dataout1)
	);

	//Instancia del módulo Demux Estrutural
	demuxEstructural DMEstr(
				.clk 	(clk),
				.reset_L(reset_L),
				.valid_in(valid_in),
				.valid_0(valid_0),
				.valid_1(valid_1),
				.data_in (data_in),
				.dataout0 (dataout0),
				.dataout1 (dataout1)
	);

	//Instancia del Probador Demux
	probador PDMux(	.clk (clk),
				.valid_0(valid_0),
				.valid_1(valid_1),
					.reset_L (reset_L),
					.valid_in(valid_in),
					.dataout0 (dataout0),
					.dataout1 (dataout1),
					.data_in (data_in)
	);


endmodule
