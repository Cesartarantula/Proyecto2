`timescale 1ns/100ps
`include "synth\ram_sync_1rw.v"
`include "synth\sintetizado.v"
`include "synth\cmos_cells.v"

module ram_tb;

	parameter DATA_WIDTH = 4 ;
	parameter ADDR_WIDTH = 3 ;

	reg 			clk, en, rnw;
	reg  [DATA_WIDTH-1:0] 	data_in;
	wire [DATA_WIDTH-1:0] 	data_out_conductual;
	wire [DATA_WIDTH-1:0] 	data_out_estructural;
	reg  [ADDR_WIDTH-1:0] 	address;

	ram_sp_sr_sw			#(	.DATA_WIDTH(DATA_WIDTH),
						.ADDR_WIDTH(ADDR_WIDTH)
					) cond (.clk(clk),
						.address(address),
						.data_in(data_in),
						.data_out(data_out_conductual),
						.en(en),
						.rnw(rnw)
					);

	ram_sp_sr_sw_synth		estr (	.clk(clk),
						.address(address),
						.data_in(data_in),
						.data_out(data_out_estructural),
						.en(en),
						.rnw(rnw)
					);

	initial #31 clk <= 0;
	
	always
	#10 clk <= ~clk;

	integer idx;
				
	initial begin
		$dumpfile("senales.vcd");
	  	$dumpvars(0,ram_tb);
		$dumpvars(0,cond);
		$dumpvars(0,estr);
		for (idx = 0; idx < (1<<ADDR_WIDTH); idx = idx + 1) begin
			$dumpvars(1,cond.mem[idx]);
		end
          	$display ("RAM test");
		#50;
		@(posedge clk);
		rnw 	<= 0;
		en 	<= 1;
		for (idx = 0; idx < (1<<ADDR_WIDTH); idx = idx + 1) begin
			address	<= idx;
			data_in	<= 15-idx;
			@(posedge clk);
		end
		rnw 	<= 1;
		for (idx = 0; idx < (1<<ADDR_WIDTH); idx = idx + 1) begin
			address	<= idx;
			@(posedge clk);
		end
		en 	<= 0;
		@(posedge clk);
		data_in	<= 0;
		address	<= 1;
		@(posedge clk);
		rnw 	<= 1;
		address	<= 0;
		@(posedge clk);
		en 	<= 1;
		@(posedge clk);
		@(posedge clk);
		$finish;
	end

endmodule

