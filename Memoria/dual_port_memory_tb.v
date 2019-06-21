module dual_port_memory_tb # ( parameter DATA_WIDTH= 6, parameter ADDR_WIDTH=8, parameter MEM_SIZE=7 )
(
	output reg 									Clock,
	output reg   								iWriteEnable,
	output reg					      	iReadEnable,
	output reg [ADDR_WIDTH-1:0]	iReadAddress,
	output reg [ADDR_WIDTH-1:0]	iWriteAddress,
	output reg [DATA_WIDTH-1:0]	iDataIn,
	input      [DATA_WIDTH-1:0] oDataOut);

	initial #0 Clock <= 0;

	always
	#1 Clock <= ~Clock;

	integer idx;

	initial begin
		$dumpfile("test.vcd");
		$dumpvars;

		#0; 
		iWriteEnable <= 0;
		iReadEnable <= 0;
		iReadAddress <= 0;
		iWriteAddress <= 0;
		iDataIn <= 0;

		#5; 
		iWriteEnable 	<= 1;
		for (idx = 0; idx < ADDR_WIDTH; idx = idx + 1) begin
			iWriteAddress	<= idx;
			iDataIn	<= 20-idx;
			#2;
		end

		iWriteEnable 	<= 0;

		#6; 
		iReadEnable <= 1;
		for (idx = 0; idx < ADDR_WIDTH; idx = idx + 1) begin
				iReadAddress	<= idx;
				#2;
		end

		iReadEnable <= 0;

		#6; 
		iWriteEnable <= 1;
	    iReadEnable <= 1;
		for (idx = 0; idx < ADDR_WIDTH; idx = idx + 1) begin
			iWriteAddress	<= 7-idx;
			iReadAddress	<= idx;
			iDataIn	<= 16-idx;
			#2;
		end

		iWriteEnable <= 0;
		iReadEnable <= 0
;

		#7; 
		$finish;
	end

endmodule
