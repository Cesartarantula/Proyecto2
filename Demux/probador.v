module probador(		    		input valid_0,
						input valid_1,
						input wire [3:0] dataout0,
						input wire [3:0] dataout1,
						output reg reset_L, 
						output reg clk,
						output reg valid_in,
						output reg [3:0] data_in
						);

initial clk <=0;
always begin
	#2 clk <= ~clk;
end

initial begin
	$dumpfile("demux.vcd");
	$dumpvars;

	reset_L <= 1'b0;
	@(posedge clk)
	data_in<=4'b0;
	valid_in<=0;
	reset_L <= 1'b1;

	@(posedge clk)
	data_in <= 4'b1010;
	valid_in<=1;

	@(posedge clk)
	data_in <= 4'b1111;
	valid_in<=1;

	@(posedge clk)
	data_in <= 4'b1110;
	valid_in<=0;

	@(posedge clk)
	data_in <= 4'b1101;
	valid_in<=0;
	
	@(posedge clk)
	data_in <= 4'b0010;
	valid_in<=1;

	@(posedge clk)
	data_in <= 8'b10101011;
	valid_in<=1;

	@(posedge clk)
	data_in <= 4'b0011;
	valid_in<=1;

	@(posedge clk)
	data_in <= 4'b0100;
	valid_in<=1;
	
	@(posedge clk)
	data_in <= 4'b0101;
	valid_in<=0;

	#30 $finish;
end

endmodule

