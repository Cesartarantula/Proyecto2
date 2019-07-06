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
 
reg [3:0] contadorprueba;
reg siga;

// Probador
initial begin
	$dumpfile("PCIE_trans.vcd");
	$dumpvars();
	if ((Pausa_MF) || (contadorprueba==0)) begin
						push<=0;
	end 
	else if (!Pausa_MF) begin
			if (contadorprueba==1) begin
				@(posedge clk); 	/// Condiciones Iniciales
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
			end
			else if (contadorprueba==2) begin	
				@(posedge clk);  	/// 2
					data_in_principal<=6'b011011; // 0 1 B (VC0,D0,DATA)
			end
			else if (contadorprueba==3) begin	
				@(posedge clk);  	/// 3
					data_in_principal<=6'b000011; // 0 0 3
			end
			else if (contadorprueba==4) begin	
				@(posedge clk);  	/// 4
					data_in_principal<=6'b011010; // 0 1 A
			end
			else if (contadorprueba==5) begin	
				@(posedge clk);  	/// 5
					pop_D0<=0; 
					pop_D1<=1;
			end
			else if (contadorprueba==6) begin	
				@(posedge clk);  	/// 6
					pop_D0<=0; 
					pop_D1<=1;
      					data_in_principal<=6'b111011; // 1 1 B
			end
			else if (contadorprueba==7) begin	
				@(posedge clk); 	/// 7
					pop_D1<=0; 
					data_in_principal<=6'b101101; // 1 0 D
			end
			else if (contadorprueba==8) begin	
				@(posedge clk);  	/// 8
					pop_D1<=0; 
      					data_in_principal<=6'b001001;// 0 0 9
			end
			else if (contadorprueba==9) begin	
				@(posedge clk);  	/// 9
					data_in_principal<=6'b001010;// 0 0 10
			end
			else if (contadorprueba==10) begin	
				@(posedge clk);  	/// 10
					data_in_principal<=6'b101101; // 1 0 D
			end
			else begin
				contadorprueba=contadorprueba+1;
			end
	end
	else begin
		reset_L<=1;
		contadorprueba<=0;
	end			
   #10
   $finish;
end  
   
   initial clk <= 0;
   initial reset_L<=0;
   initial init <=0 ;
   initial pop_D0<=0;
   initial pop_D1<=0;
   initial push<=0;
   initial data_in_principal<=0;

   always #1 clk <= ~clk;
   

endmodule 
