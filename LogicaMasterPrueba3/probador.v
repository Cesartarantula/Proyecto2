module probador (//Entradas
				   output reg clk,      
                   output reg reset_L, 
                   output reg init,    
			       output reg [5:0]  data_in_principal,  
			       output reg push,                    
			       output reg pop_D0,  
			       output reg pop_D1,  

			// output reg [1:0] umbral_MF, 	
	     		// output reg [3:0] umbral_VC0,	
                   	// output reg [3:0] umbral_VC1, 	
	               	// output reg [1:0] umbral_D0, 	
                   	// output reg [1:0] umbral_D1,
                
				   //salidas
              input active_out_synth,
		      input error_out_synth,
		      input idle_out_synth,
		      input [5:0] data_out0_synth,
		      input [5:0] data_out1_synth,
			
              input active_out_cond,
		      input error_out_cond,
		      input idle_out_cond,
		      input [5:0] data_out0_cond,
		      input [5:0] data_out1_cond);
   
   
// Probador
 initial #0 clk <= 1; // inicia el reloj en 0.
    always
    #1 clk <= ~clk; // el reloj cambia cada ciclo

initial begin
  $dumpfile("PCIE_trans.vcd");
  $dumpvars;

   init <=0 ;
   pop_D0<=0;
   pop_D1<=0;
   push<=0;
   data_in_principal<=0;
   reset_L<=0;

    #2;
    reset_L<=1;

    #1;
    init<=1;
    
    #2;
    init<=0;


    #11; // 1
    push<=1;
    data_in_principal<=6'h1B; // 0 1 B (VC0,D0,DATA)

    #2;  // 2
    data_in_principal<=6'h2D; // 1 0 D
      
    #2; // 3;
    data_in_principal<=6'h1C; // 0 0 3

   #2;// 4
    data_in_principal<=6'h1A; // 0 1 A
    
    #2;
    data_in_principal<=6'h07;

    
    #2;
    data_in_principal<=6'h19;
    
    #2;
    data_in_principal<=6'h33;
    
    #2;
    data_in_principal<=6'h22;
    
    #2;
    data_in_principal<=6'h25;
    
    #2;
    data_in_principal<=6'h2E;
    
    /////////////////////////////////////////////////D
      
   //#2; 
    //  		data_in_principal<=6'b000000; // 0
    
    #2;
		push<=0;	
	//	pop_D0<=1;

	
	//	pop_D0<=1;

	/////////////////////////////////////////////////
/*
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
		push<=0;    */

#60
   $finish;
end  

   

endmodule 
