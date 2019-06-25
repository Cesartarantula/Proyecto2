//IE-0523 Circuitos Digitales II
//Proyecto2. Bloque Probador de la (FSM).
//Elaborado por: César Valverde Zuñiga	A86605		
//I Ciclo 2019

module probador (	input [13:0] umbrales_I_condu,
			input 	   active_condu,
			input 	   idle_condu,
			input [4:0] error_condu, 
			input [13:0] umbrales_I_estru,
			input 	   active_estru,
			input 	   idle_estru,
			input [4:0] error_estru, 
			output reg clk,
			output reg reset,
			output reg init,
			output reg [1:0] umbral_MF,
			output reg [3:0] umbral_VC0,
			output reg [3:0] umbral_VC1,
			output reg [1:0] umbral_D0,
			output reg [1:0] umbral_D1,
			output reg [4:0] FIFO_error,
			output reg [4:0] FIFO_empty);

	//Señal de reloj
	initial clk <= 0;
	always #1 clk = ~clk;	

	initial 
	begin	// Archivo de salida para GTKWave
		$dumpfile("fsmControl.vcd");	 
     		$dumpvars(0,testbench); 

	   //Secuencia de pruebas
	   //Condiciones Iniciales (Prueba1)
	   #0 reset <=0;
	   init<=0;
	    
	   umbral_MF<=2'b00; 
	   umbral_D0<=2'b00;
           umbral_D1<=2'b00;
           umbral_VC0<=4'b0000;
           umbral_VC1<=4'b0000;
	   FIFO_error<=0;
	   FIFO_empty<=0;
 
	   //Prueba2 Estado de Reset
	   @(posedge clk);
	   reset <= 1;

	   //Prueba3 Forzado de estado de Init
	   @(posedge clk);
	   init <= 1;
           umbral_MF<=2'b01; 
	   umbral_D0<=2'b01;
           umbral_D1<=2'b01;
           umbral_VC0<=4'b0001;
           umbral_VC1<=4'b0001;

	   #10
	   //Prueba4 Recibe señal de FIFO_error=1 E Init=0
	   @(posedge clk);
           init <= 0;
	   FIFO_error <=5'b10100;
	   umbral_MF<=2'b11; //Le meto 3
	   umbral_VC1<=4'b1100; //Le meto 12
           umbral_D1<=2'b11; //Le meto 3

	   //Prueba5 Init=1 con FIFO
	   @(posedge clk);
	   //init <= 1; //Tiene que mandar almost_emptys
	   FIFO_empty <=5'b00000;
	   umbral_MF<=2'b01; //Le meto 1
	   umbral_VC0<=4'b0000; //Le meto 0
           umbral_D0<=2'b00; //Le meto 0

	  //Prueba6 Apaga señal de reset y señal de FIFO_error, espera 4 ciclos de relog y vuelve Reset a 1
	  @(posedge clk);
	   #6 reset <= 0;
	   FIFO_error <= 0;
	   #6 reset <= 1;

	   #15
	   //Prueba7
	   @(posedge clk);
	   FIFO_empty <=5'b11110;
	   init <= 0;
	   #16  FIFO_empty <= 0;
	
	   //Prueba8
	   @(posedge clk);
	   FIFO_empty <=5'b00100;;
	   init <= 0;
	   #16  FIFO_error <=5'b00100;
	   
	   //Tiempo de Espera
	   #100 $finish;
	   
	end

endmodule
