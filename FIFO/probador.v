module probador
# ( parameter N=2 , parameter ADDR_WIDTH=8, parameter MEM_SIZE=7 )(

 output reg 		   clk,
 output reg 		   reset ,
 output reg 		   push,pop,
 output reg [ADDR_WIDTH-1:0] data_in,
 output reg 		   valid,
 output reg [3:0] 	   umbralA,
 output reg [3:0] 	   umbralB, 
 
 input [ADDR_WIDTH-1:0] 	   data_out_synth,
 input [ADDR_WIDTH-1:0] 	   data_out_cond,
 input 			   empty,
 input 			   continua,
 input 			   pause,
 input 			   valid_out,
 input 			   fifo_error,
 
 input 			   empty_syn,
 input 			   continua_syn,
 input 			   pause_syn,
 input 			   valid_out_syn,
 input 			   fifo_error_syn			   

);
   
   
   // Probador
   initial begin
   $dumpfile("fifo.vcd");
	$dumpvars();
   @(posedge clk);
      reset<=0;
   //////////////////////////// First full push
   
   @(posedge clk);
      data_in<='b1;
      push <= 1;
      valid <= ~valid; // 1
      
   
   @(posedge clk); 
      push <= 1;	
      data_in <= $random;
      valid <= ~valid; // 2

     @(posedge clk); 
      push <= 1;	
      data_in <= $random;
      valid <= ~valid; //3

      @(posedge clk); 
      push <= 1;	
      data_in <= $random;
      valid <= ~valid;//4
       
      @(posedge clk); 
      push <= 1;     // 5 	 
      data_in <= $random;
      valid <= ~valid;
      
      @(posedge clk); 
      push <= 1;     // 6 	 
      data_in <= $random;
      valid <= ~valid;

      @(posedge clk); 
      push <= 1;     // 7 	 
      data_in <= $random;
      valid <= ~valid;

      @(posedge clk); 
      push <= 1;     // 8 	 
      data_in <= $random;
      valid <= ~valid;
      
      @(posedge clk);
      push <=0;
      pop<= 0;
       ///////////////////////////////////  First full pop
      @(posedge clk);
      data_in<=$random;
      valid <= ~valid;
      pop <= 1; // 1
      
       @(posedge clk);
      data_in<=$random;
      valid <= ~valid;
      pop <= 1; // 2

       @(posedge clk);
      data_in<=$random;
      valid <= ~valid;
      pop <= 1; // 3
      
    @(posedge clk);
      data_in<=$random;
      valid <= ~valid;
      pop <= 1; // 4

       @(posedge clk);
      data_in<=$random;
      valid <= ~valid;
      pop <= 1; // 5

      @(posedge clk); 
      pop <= 1;     // 6 	 
      data_in <= $random;
      valid <= ~valid;

      @(posedge clk); 
      pop <= 1;     // 7 	 
      data_in <= $random;
      valid <= ~valid;

      @(posedge clk); 
      pop <= 1;     // 8 	 
      data_in <= $random;
      valid <= ~valid;
   
   @(posedge clk);
      pop<=0;
///////////////////////////////////// Second push, half

      @(posedge clk);
      data_in<='b1;
      push <= 1;
      valid <= ~valid; // 1
      
   
   @(posedge clk); 
      push <= 1;	
      data_in <= $random;
      valid <= ~valid; // 2

     @(posedge clk); 
      push <= 1;	
      data_in <= $random;
      valid <= ~valid; //3

      @(posedge clk); 
      push <= 1;	
      data_in <= $random;
      valid <= ~valid;//4
       
      @(posedge clk); 
      push <= 1;     // 5 	 
      data_in <= $random;
      valid <= ~valid;
////////////////////////////////////// pop and push
       @(posedge clk);
      data_in<=$random;
      valid <= ~valid;
      pop <= 1; // 1
      
       @(posedge clk);
      data_in<=$random;
      valid <= ~valid;
      pop <= 1; // 2

       @(posedge clk);
      data_in<=$random;
      valid <= ~valid;
      pop <= 1; // 3
      
    @(posedge clk);
      data_in<=$random;
      valid <= ~valid;
      pop <= 1; // 4
      
      @(posedge clk);
      push <=0;
      pop <=0;
      
      #1000
   $finish;
end  
   
   initial clk <= 0;
   initial reset<=1;
   initial valid<=0;
   //initial data_in<=0;
   initial pop<=0;
   initial push<=0;
   initial umbralA<=4'h6;
   initial umbralB<=4'h3;
   
   
   always #1 clk <= ~clk;
   

endmodule 
