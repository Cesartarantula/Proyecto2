module probador(

 output reg 		clk,
 output reg 		reset_L,
 output reg 		push,pop,
 output reg [5:0] 	Fifo_Data_in, 
 
 input [5:0]		Fifo_Data_out,
 input 			Fifo_Empty,
 input 			Fifo_Error,	
 input 			Pausa
		   
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

      @(posedge clk); 
      push <=0;
      pop <= 1;     
 
      @(posedge clk);
      push <=0;
      pop <= 1;     
    
      @(posedge clk);
      push <=0;
      pop <= 0;
      Fifo_Data_in <= 6'h1D;
      
      //second test
      
      @(posedge clk);
      push <= 1;
      Fifo_Data_in <= 6'h1A;
      
      @(posedge clk);
      push <= 1;
      pop <= 1;
      Fifo_Data_in <= 6'h1B;
      
      @(posedge clk);
      push <= 1;
      pop <= 1;
      Fifo_Data_in <= 6'h1C;
      
      @(posedge clk);
      push <= 0;
      pop <= 1;
      Fifo_Data_in <= 6'h1D;
      
      @(posedge clk);
      push <= 0;
      pop <= 1;
      Fifo_Data_in <= 6'h1E;
      
      @(posedge clk);
      push <= 0;
      pop <= 0;
      Fifo_Data_in <= 6'h1F;
    
      #10
   $finish;
end  
   
   initial clk <= 0;
   initial reset_L<=0;
   initial Fifo_Data_in<=0;
   initial pop<=0;
   initial push<=0;
   //initial Almost_Empty<=4'h3;
   //initial Almost_Full<=4'h1;
   
   always #1 clk <= ~clk;
   

endmodule 
