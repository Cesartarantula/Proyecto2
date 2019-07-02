module probador(

 output reg 		clk,
 output reg 		reset_L,
 output reg 		push,pop,
 output reg [5:0] 	Fifo_Data_in,
 output reg 		valid,
 output reg [3:0] 	almost_empty,
 output reg [3:0] 	almost_full, 
 
 input [5:0]		Fifo_data_out,
 input 			Fifo_empty,
 input 			CONTINUE,
 input 			PAUSE,
 input 			valid_out,
 input 			fifo_error			   

);
   
   
   // Probador
   initial begin
   $dumpfile("fifo.vcd");
	$dumpvars();
   @(posedge clk);
   #2 reset_L<=1;
   //////////////////////////// First full push
   
   @(posedge clk);
      Fifo_Data_in<='b1;
      push <= 1;
      valid <= ~valid; // 1
      
   
   @(posedge clk); 
      push <= 1;	
      Fifo_Data_in <= 6'h16;
      valid <= ~valid; // 2

     @(posedge clk); 
      push <= 1;	
      Fifo_Data_in <= 6'h30;
      valid <= ~valid; //3

      @(posedge clk); 
      push <= 1;	
      Fifo_Data_in <= 6'h1C;
      valid <= ~valid;//4
       
      @(posedge clk); 
      push <= 1;     // 5 	 
      Fifo_Data_in <= 6'h1D;
      valid <= ~valid;
      
      @(posedge clk); 
      push <= 1;     // 6 	 
      Fifo_Data_in <= $random;
      valid <= ~valid;

      @(posedge clk); 
      push <= 1;     // 7 	 
      Fifo_Data_in <= $random;
      valid <= ~valid;

      @(posedge clk); 
      push <= 1;     // 8 	 
      Fifo_Data_in <= $random;
      valid <= ~valid;
      
      @(posedge clk);
      push <=0;
      pop<= 0;
       ///////////////////////////////////  First full pop
      @(posedge clk);
      Fifo_Data_in<=$random;
      valid <= ~valid;
      pop <= 1; // 1
      
       @(posedge clk);
      Fifo_Data_in<=$random;
      valid <= ~valid;
      pop <= 1; // 2

       @(posedge clk);
      Fifo_Data_in<=$random;
      valid <= ~valid;
      pop <= 1; // 3
      
    @(posedge clk);
      Fifo_Data_in<=$random;
      valid <= ~valid;
      pop <= 1; // 4

       @(posedge clk);
      Fifo_Data_in<=$random;
      valid <= ~valid;
      pop <= 1; // 5

      @(posedge clk); 
      pop <= 1;     // 6 	 
      Fifo_Data_in <= $random;
      valid <= ~valid;

      @(posedge clk); 
      pop <= 1;     // 7 	 
      Fifo_Data_in <= $random;
      valid <= ~valid;

      @(posedge clk); 
      pop <= 1;     // 8 	 
      Fifo_Data_in <= $random;
      valid <= ~valid;
   
   @(posedge clk);
      pop<=0;
///////////////////////////////////// Second push, half

      @(posedge clk);
      Fifo_Data_in<='b1;
      push <= 1;
      valid <= ~valid; // 1
      
   
   @(posedge clk); 
      push <= 1;	
      Fifo_Data_in <= $random;
      valid <= ~valid; // 2

     @(posedge clk); 
      push <= 1;	
      Fifo_Data_in <= $random;
      valid <= ~valid; //3

      @(posedge clk); 
      push <= 1;	
      Fifo_Data_in <= $random;
      valid <= ~valid;//4
       
      @(posedge clk); 
      push <= 1;     // 5 	 
      Fifo_Data_in <= $random;
      valid <= ~valid;
////////////////////////////////////// pop and push
       @(posedge clk);
      Fifo_Data_in<=$random;
      valid <= ~valid;
      pop <= 1; // 1
      
       @(posedge clk);
      Fifo_Data_in<=$random;
      valid <= ~valid;
      pop <= 1; // 2

       @(posedge clk);
      Fifo_Data_in<=$random;
      valid <= ~valid;
      pop <= 1; // 3
      
    @(posedge clk);
      Fifo_Data_in<=$random;
      valid <= ~valid;
      pop <= 1; // 4
      
      @(posedge clk);
      push <=0;
      pop <=0;
      
      #100
   $finish;
end  
   
   initial clk <= 0;
   initial reset_L<=0;
   initial valid<=0;
   //initial data_in<=0;
   initial pop<=0;
   initial push<=0;
   initial almost_empty<=4'h3;
   initial almost_full<=4'h1;
   
   
   always #1 clk <= ~clk;
   

endmodule 
