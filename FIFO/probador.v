module probador(

 output reg 		clk,
 output reg 		reset_L,
 output reg 		push,pop,
 output reg [5:0] 	Fifo_Data_in,
 output reg 		valid,
 //output reg [3:0] 	Almost_Empty,
 //output reg [3:0] 	Almost_Full, 
 
 input [5:0]		Fifo_Data_out,
 input 			Fifo_Empty,
 input 			Pausa,
 input 			valid_out,
 input 			Fifo_Error			   

);
   
   // Probador
   initial begin
   $dumpfile("fifo.vcd");
	$dumpvars();
   @(posedge clk);
   #2 reset_L<=1;
   //////////////////////////// First full push
   
   @(posedge clk);
      Fifo_Data_in<= 6'h11;
      push <= 1;
      valid <= ~valid; // 1
   
   @(posedge clk); 
      push <= 1;	
      Fifo_Data_in <= 6'h16;

   @(posedge clk); 
      push <= 1;	
      Fifo_Data_in <= 6'h30;

   @(posedge clk); 
      push <= 1;	
      Fifo_Data_in <= 6'h1C;

      @(posedge clk); 
      push <=0;
      pop <= 1;  
      valid <= ~valid; // 0

      @(posedge clk); 
      pop <= 1;     
 
      @(posedge clk); 
      pop <= 1;     
    
      @(posedge clk);
      pop <= 0;
      valid <= ~valid;// 1
      Fifo_Data_in <= 6'h1D;
    
      #10
   $finish;
end  
   
   initial clk <= 0;
   initial reset_L<=0;
   initial valid<=0;
   initial Fifo_Data_in<=0;
   initial pop<=0;
   initial push<=0;
   //initial Almost_Empty<=4'h3;
   //initial Almost_Full<=4'h1;
   
   always #1 clk <= ~clk;
   

endmodule 
