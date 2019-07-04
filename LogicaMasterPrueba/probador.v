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

	//2 Ciclos para reset de señales
	//repeat(2)begin
      	//	@(posedge clk); 
      	//		reset_L<=1;
      	//	end
   	
	//Probar estado init
	repeat(1)begin
   		@(posedge clk);
      			//init <=1;
      			reset_L<=0;
		end

	//Reset en bajo
   	@(posedge clk);
      		reset_L<=1;;
		init <=0;
        
    	/////////////////////////////////////////////////
     	//3 PUSH a D0 1 POP A D0 Y 3 PUSH a D1
	@(posedge clk); 	/// 1
		data_in_principal<=6'b011011; // 0 1 B (VC0,DO,DATA)
		push<=1;
	
	@(posedge clk);  	/// 2
		data_in_principal<=6'b001101; // 0 0 D
		push<=1;
      
   	@(posedge clk); 	/// 3
		pop_D0<=1;
      		data_in_principal<=6'b000011; // 0 0 3
      		push<=1;

      	@(posedge clk);		/// 4
		pop_D0<=1;
      		data_in_principal<=6'b110001;// 1 1 1
      		push<=1;

     	@(posedge clk);		/// 5
		pop_D0<=0; 
		pop_D1<=1;
      		data_in_principal<=6'b011010; // 0 1 A
      		push<=1;

      	@(posedge clk)		/// 6
		pop_D1<=1; 
      		data_in_principal<=6'b001100;// 0 0 C
      		push<=1;

     	@(posedge clk); //4
		pop_D1<=0; 
		data_in_principal<=6'b001001; // 0 0 9
      		push<=1;
      	@(posedge clk);
      		data_in_principal<=6'b011001;// 0 1 9
      		push<=1;
 
      	@(posedge clk); //5
      		data_in_principal<=6'b111011; // 1 1 B
      		push<=1;
      
	@(posedge clk); //5
     		data_in_principal<=6'b111101; // 1 1 D
     	 	push<=1;

      	@(posedge clk); // 6
      		data_in_principal<=6'b011111; // 0 1 F
     		 push<=1;

      /////////////////////////////////////////////////
      //4 POP a D0 (4 lecturas al DO)
      @(posedge clk); 
      data_in_principal<=6'b000000; 
      push<=0;
      pop_D0<=1; 

      @(posedge clk); 
      pop_D0<=1;

      @(posedge clk); 
      pop_D0<=1;

      @(posedge clk); 
      pop_D0<=1;

      //4 POP a D1
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
      /*@(posedge clk);
      data_p0<='b101011; //C1 0B
      valid_p0<=1;
      
      data_p1<='b111101; //C1 1D
      valid_p1<=1;
      ////
      @(posedge clk);
      data_p0<='b101001; // C1 09
      valid_p0<=1;
      
      data_p1<='b110101; // C1 15
      valid_p1<=1;
      ////
       @(posedge clk);
      data_p0<='b110011;// C1 13
      valid_p0<=1;
      
      data_p1<='b100101;// C1 05
      valid_p1<=1;
      ///
      @(posedge clk);
      data_p0<='b111001;// C1 19
      valid_p0<=1;
      
      data_p1<='b101111;// C1 0F
      valid_p1<=1;
      ///
      @(posedge clk);
      data_p0<='b111111; // 1F
      valid_p0<=1;
      
      data_p1<='b100111; // C1 07
      valid_p1<=1;
      //////////////////////////////////////////////////////
      @(posedge clk);
      data_p0<='b110000; // 0
      valid_p0<=1;
      
      data_p1<='b100000; // 0
      valid_p1<=1;
*/
      #10
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
