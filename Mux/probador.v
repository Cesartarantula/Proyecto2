module probador(//outputs
				output reg clk, 
			    output reg reset_L,
			    output reg valid_in_VC0, 
			    output reg valid_in_VC1,	
			    output reg [5:0] data_in_VC0,
			    output reg [5:0] data_in_VC1,
				//inputs
			    input [5:0] dataout,
			    input valid_out);

initial #0 clk <= 0; // inicia el reloj en 0.
    always
    #1 clk <= ~clk; // el reloj cambia cada ciclo

initial begin
	$dumpfile("mux.vcd");
	$dumpvars;
	#0; // 0 unidades tiempo
	reset_L <= 0;
	valid_in_VC0<=0;
	valid_in_VC1<=0;
	data_in_VC0<=0;
	data_in_VC1<=0;
	
	#5; // 5 unidades tiempo
	//@(posedge clk)
	reset_L <= 1;	
	data_in_VC0<=6'h34;
	data_in_VC1<=6'h30;
	valid_in_VC0<=1;
	valid_in_VC1<=1;
	
	#5; //10 unidades tiempo
	//@(posedge clk)
	//reset_L <= 1;	
	data_in_VC0<=6'h25;
	data_in_VC1<=6'h12;
	valid_in_VC0<=0;
	valid_in_VC1<=1;

	#5;
	//@(posedge clk)
	//reset_L <= 0;	
	data_in_VC0<=6'h25;
	data_in_VC1<=6'h12;
	valid_in_VC0<=1;
	valid_in_VC1<=1;

	#5
	//@(posedge clk)
	//reset_L <= 1'b1;	
	data_in_VC0<=6'h21;
	data_in_VC1<=6'h07;
	valid_in_VC0<=1;
	valid_in_VC1<=0;

	#5;
	//@(posedge clk)
	//reset_L <= 0;	
	data_in_VC0<=6'h2E;
	data_in_VC1<=6'h1A;
	valid_in_VC0<=1;
	valid_in_VC1<=1;

	#5;
	//@(posedge clk)
	reset_L <= 0;	
	data_in_VC0<=6'h32;
	data_in_VC1<=6'h1D;
	valid_in_VC0<=1;
	valid_in_VC1<=1;

	#5;
	//@(posedge clk)
	reset_L <= 1;	
	data_in_VC0<=6'h3A;
	data_in_VC1<=6'h1F;
	valid_in_VC0<=0;
	valid_in_VC1<=0;

	#5;
	//@(posedge clk)
	reset_L <= 1'b1;	
	data_in_VC0<=6'h2E;
	data_in_VC1<=6'h1A;
	valid_in_VC0<=1;
	valid_in_VC1<=1;

	#10 $finish;
end

endmodule
