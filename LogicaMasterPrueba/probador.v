module probador (

 output reg clk,
 output reg reset_L,
 output reg init,

 //output reg [1:0] umbralMF,
 //output reg [1:0] umbralD0,
 //output reg [1:0] umbralD1,
 //output reg [3:0] umbralVC0,
 //output reg [3:0] umbralVC1, 

 output reg [5:0] data_in_principal,
 output reg push,
 output reg pop_D0,
 output reg pop_D1,

 input Pausa_MF, 
 input active_out,
 input idle_out, 
 input error_out,

 input [5:0] data_out0,
 input [5:0] data_out1					
);
   
   	// Probador
  	 initial begin
   	$dumpfile("PCIE_trans.vcd");
	$dumpvars();

	//1 Ciclo para reset de señales
	repeat(1)begin
   		@(posedge clk);
      			reset_L<=0;
		end
	//El Reset en bajo
	@(posedge clk);
		reset_L<=1;;

	//Probar estado init
	repeat(1)begin
   		@(posedge clk);
      			init<=1;
		end

	//El Reset en init
   	@(posedge clk);
		init <=0;
        
    	/////////////////////////////////////////////////
     	//4 PUSH a D0 
     	//2 POP A D0 
     	//2 POP A D1
    	/////////////////////////////////////////////////
	@(posedge clk); 	/// 1
		push<=1;
		data_in_principal<=6'b011011; // 0 1 B (VC0,D0,DATA)

	@(posedge clk);  	/// 2
		data_in_principal<=6'b101101; // 1 0 D
      
   	@(posedge clk); 	/// 3;
      		data_in_principal<=6'b000011; // 0 0 3

      	@(posedge clk);		/// 4
      		data_in_principal<=6'b011010; // 0 1 A

	/////////////////////////////////////////////////D
      
   	@(posedge clk); 
      		data_in_principal<=6'b000000; // 0
		push<=0;	
		pop_D0<=1;

	@(posedge clk);		
		pop_D0<=1;

	/////////////////////////////////////////////////

	@(posedge clk);		/// 5
		push<=0;
		pop_D0<=0; 
		pop_D1<=1;

	/////////////////////////////////////////////////
     	//2 PUSH a D1
     	//2 PUSH a D0
	//2 PUSH a D0  
    	/////////////////////////////////////////////////
     	@(posedge clk);		/// 6
		push<=1;
		pop_D0<=0; 
		pop_D1<=1;
      		data_in_principal<=6'b111011; // 1 1 B

      	@(posedge clk)		/// 7
		//push<=1;
		pop_D1<=0; 
		data_in_principal<=6'b101011; // 1 1 B

     	@(posedge clk);		/// 8
      		//push<=1;
		pop_D1<=0; 
      		data_in_principal<=6'b001001;// 0 0 9

      	@(posedge clk);		/// 9
      		//push<=1;
      		data_in_principal<=6'b001010;// 0 0 10
	/////////////////////////////////////////////////

	@(posedge clk);		/// 5
		push<=0;

	/////////////////////////////////////////////////
/*
	/////////////////////////////////////////////////
     	//2 PUSH a D1
     	//2 PUSH a D0
	//2 PUSH a D0  
    	////////////////////////////////////////////////
      	@(posedge clk);		/// 9
      		push<=1;
      		data_in_principal<=6'b111011; // 1 1 B

	@(posedge clk);		/// 10
     	 	push<=1;
     		data_in_principal<=6'b111101; // 1 1 D

      	@(posedge clk); 	/// 11
     		push<=1;
      		data_in_principal<=6'b011111; // 0 1 F
     
     	 @(posedge clk); 
      		push<=0;
      		pop_D0<=1;
      		data_in_principal<=6'b000000; 

       	@(posedge clk); 
      		pop_D0<=1;

      	@(posedge clk); 
      		pop_D0<=1;

      	@(posedge clk); 
      		pop_D0<=1;

      	@(posedge clk); 
      		pop_D0<=0;
      		pop_D1<=1; 

      	@(posedge clk); 
      		pop_D1<=1;
	
      	@(posedge clk); 
      		pop_D1<=1;

      	@(posedge clk); 
      		pop_D0<=1;

      	@(posedge clk); 
		pop_D0<=0;

      	@(posedge clk); 
      		pop_D1<=1;
      
      	@(posedge clk); 
      		pop_D1<=1;

      	@(posedge clk); 
      		pop_D1<=0;
      		data_in_principal<=6'b000000; 
  */    #10
   $finish;
end  
   
   initial clk <= 0;
   initial reset_L<=1;
   initial init <=0 ;
   initial pop_D0<=0;
   initial pop_D1<=0;
   initial push<=0;
   initial data_in_principal<=0;

   always #1 clk <= ~clk;
   

endmodule 
