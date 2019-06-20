`timescale 1ns/100ps

`include "dual_port_memory.v"
`include "dual_port_memory_tb.v"
`include "synth.v"
`include "cmos_cells.v"

module dut;

parameter DATA_WIDTH= 6;
parameter ADDR_WIDTH=8;
parameter MEM_SIZE=7;
wire Clock, iWriteEnable;
wire[ADDR_WIDTH-1:0]	iReadAddress0;
wire [ADDR_WIDTH-1:0]	iWriteAddress;
wire [DATA_WIDTH-1:0]		 	iDataIn;
wire [DATA_WIDTH-1:0] 		oDataOut0, oDataOut0_synth;
 
dual_port_memory #(.DATA_WIDTH(6), 
                   .ADDR_WIDTH(8), 
                   .MEM_SIZE(7)) 
             dual_port_memory (.Clock(Clock),
							   .iWriteEnable(iWriteEnable),
							   .iReadAddress0(iReadAddress0),
						       .iWriteAddress(iWriteAddress),
							   .iDataIn(iDataIn),
							   .oDataOut0(oDataOut0));

dual_port_memory_synth dual_port_memory_synth(.Clock(Clock),
									.iWriteEnable(iWriteEnable),
									.iReadAddress0(iReadAddress0),
									.iWriteAddress(iWriteAddress),
									.iDataIn(iDataIn),
									.oDataOut0(oDataOut0_synth));

dual_port_memory_tb dual_port_memory_tb /*#(.DATA_WIDTH(DATA_WIDTH),
					                .ADDR_WIDTH(ADDR_WIDTH),
									.MEM_SIZE(MEM_SIZE))*/
								   (.Clock(Clock),
									.iWriteEnable(iWriteEnable),
									.iReadAddress0(iReadAddress0),
									.iWriteAddress(iWriteAddress),
									.iDataIn(iDataIn),
									.oDataOut0(oDataOut0));


endmodule
