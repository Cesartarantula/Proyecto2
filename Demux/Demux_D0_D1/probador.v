module probador(		    		input valid_0,
						input valid_1,
						input wire [5:0] dataout0,
						input wire [5:0] dataout1,
						output reg reset_L,
						output reg clk,
						output reg valid_in,
						output reg [5:0] data_in
						);

initial clk <=0;
always begin
	#2 clk <= ~clk;
end

initial begin
	$dumpfile("Demux_D0_D1.vcd");
	$dumpvars;

	reset_L <= 1'b0;
	@(posedge clk)
	data_in<=6'h34;
	valid_in<=0;
	reset_L <= 1'b1;

	@(posedge clk)
	data_in <= 6'h32;
	valid_in<=1;

	@(posedge clk)
	data_in <= 6'h37;
	valid_in<=1;

	@(posedge clk)
	data_in <= 6'h7E;
	valid_in<=0;

	@(posedge clk)
	data_in <= 6'h2D;
	valid_in<=0;

	@(posedge clk)
	data_in <= 6'h12;
	valid_in<=1;

	@(posedge clk)
	data_in <= 6'h13;
	valid_in<=1;

	@(posedge clk)
	reset_L <= 1'b0;

	@(posedge clk)
	reset_L <= 1'b1;

	@(posedge clk)
	data_in <= 6'h23;
	valid_in<=1;

	@(posedge clk)
	data_in <= 6'h4;
	valid_in<=1;

	@(posedge clk)
	data_in <= 6'h25;
	valid_in<=0;

	#30 $finish;
end

endmodule
