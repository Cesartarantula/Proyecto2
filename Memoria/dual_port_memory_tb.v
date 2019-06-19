module dual_port_memory_tb # ( parameter DATA_WIDTH= 6, 
							   parameter ADDR_WIDTH=8, 
                               parameter MEM_SIZE=7 )
                             ( output reg Clock,
	                           output reg iWriteEnable,
	                           output reg [ADDR_WIDTH-1:0] iReadAddress0,
	                           output reg [ADDR_WIDTH-1:0]	iWriteAddress,
					           output reg [DATA_WIDTH-1:0]		 	iDataIn,
                               input [DATA_WIDTH-1:0] 		oDataOut0);

	initial #0 Clock <= 0;
	
	always
	#1 Clock <= ~Clock;

	integer idx;
				
	initial begin
		$dumpfile("test.vcd");
		$dumpvars;
	 // 	$dumpvars(0,ram_tb);
	//	$dumpvars(0,cond);
	//	$dumpvars(0,estr);
		//for (idx = 0; idx < (1<<ADDR_WIDTH); idx = idx + 1) begin
		  //for (idx = 0; idx < ADDR_WIDTH; idx = idx + 1) begin
	//		$dumpvars(1,cond.mem[idx]);
		//end

		#5;
		//@(posedge Clock);
		/*iWriteEnable <= 0;
		//for (idx = 0; idx < (1<<ADDR_WIDTH); idx = idx + 1) begin
			for (idx = 0; idx < ADDR_WIDTH; idx = idx + 1) begin
			iDataIn	<= 0;
		    iWriteAddress <= 0;
			iReadAddress0 <= 0;
			#1;
			//@(posedge Clock);
		end */
        #5;
		//@(posedge Clock);
		iWriteEnable <= 1;
		for (idx = 0; idx < ADDR_WIDTH; idx = idx + 1) begin
			iDataIn	<= 15-idx;
			iWriteAddress <= 7-idx;
            #2;
			iReadAddress0 <= 7-idx;
			#1;
			//@(posedge Clock);
		end 
	    
		/* #5;
		iWriteEnable <= 0;	
		#5;
		iWriteEnable <= 1; */
	
	/*    for (idx = 0; idx < ADDR_WIDTH; idx = idx + 1) begin
			iDataIn	<= 20-idx;
			iWriteAddress <= 7-idx;
			iReadAddress0 <= idx;
			#1;
			//@(posedge Clock);
		end*/
		
		$finish;
	end

endmodule
