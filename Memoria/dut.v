`timescale 1ns/100ps

`include "dual_port_memory.v"
`include "dual_port_memory_tb.v"
`include "synth.v"
`include "cmos_cells.v"

module dut;

parameter DATA_WIDTH= 6;
parameter ADDR_WIDTH=8;
parameter MEM_SIZE=7;
wire Clock, iWriteEnable, iReadEnable;
wire[ADDR_WIDTH-1:0]	iReadAddress;
wire [ADDR_WIDTH-1:0]	iWriteAddress;
wire [DATA_WIDTH-1:0]		 	iDataIn;
wire [DATA_WIDTH-1:0] 		oDataOut, oDataOut_synth;

dual_port_memory #(.DATA_WIDTH(6),
                   .ADDR_WIDTH(8),
                   .MEM_SIZE(7))
                 dual_port_memory (.Clock(Clock),
							     .iWriteEnable(iWriteEnable),
							     .iReadEnable(iReadEnable),
						       .iWriteAddress(iWriteAddress),
                   .iReadAddress(iReadAddress),
							     .iDataIn(iDataIn),
							     .oDataOut(oDataOut));

dual_port_memory_synth dual_port_memory_synth(.Clock(Clock),
                      .iWriteEnable(iWriteEnable),
                      .iReadEnable(iReadEnable),
    									.iWriteAddress(iWriteAddress),
                      .iReadAddress(iReadAddress),
		    							.iDataIn(iDataIn),
				    					.oDataOut(oDataOut_synth));

dual_port_memory_tb #(.DATA_WIDTH(6),
                      .ADDR_WIDTH(8),
                      .MEM_SIZE(7))
                    dual_port_memory_tb
								     (.Clock(Clock),
                      .iWriteEnable(iWriteEnable),
                      .iReadEnable(iReadEnable),
									    .iReadAddress(iReadAddress),
									    .iWriteAddress(iWriteAddress),
									    .iDataIn(iDataIn),
									    .oDataOut(oDataOut));

endmodule
