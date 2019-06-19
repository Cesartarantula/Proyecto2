//IE-0523 Circuitos Digitales II
//Proyecto2. Bloque Probador de la (FSM).
//Elaborado por: César Valverde Zuñiga	A86605		
//I Ciclo 2019

module probador (	input [7:0] umbrales_VCFC_condu,
			input 	   active_condu,
			input 	   idle_condu,
			input 	   error_condu, 
			input [7:0] umbrales_VCFC_estru,
			input 	   active_estru,
			input 	   idle_estru,
			input 	   error_estru, 
			output reg clk,
			output reg reset,
			output reg init,
			output reg [7:0] umbral_VCFC,
			output reg FIFO_error,
			output reg FIFO_empty);

   

	//Señal de reloj
	initial clk <= 0;
	always #1 clk = ~clk;	

	initial 
	begin	// Archivo de salida para GTKWave
		$dumpfile("fsmControl.vcd");	 
     		$dumpvars(0,testbench); 

	   //Secuencia de pruebas
	   //Condiciones Iniciales (Prueba1)
	   reset <= 0;
	   init<=0;
	   umbral_VCFC<=8'b00000000;
	   FIFO_error<=0;
	   FIFO_empty <= 0;
 
	   //Prueba2
	   @(posedge clk);
	   reset <= 1;
	   //Prueba3
	   @(posedge clk);
	   init <= 1;
	   //Prueba4
	   @(posedge clk);
	   FIFO_error <= 1;
	   init <= 0;
	   //Prueba5
	   @(posedge clk);
	   reset <= 0;
	   FIFO_error <= 0;
	   #4 reset <= 1;
	   //Prueba6
	   @(posedge clk);
	   init <= 1;
	   umbral_VCFC<=8'b10101111;
	   FIFO_empty <= 1;
	   //Prueba7
	   @(posedge clk);
	   init <= 0;
	   #4 FIFO_empty <= 0;
	   
	   //Tiempo de Espera
	   #20 $finish;
	   
	end

endmodule
