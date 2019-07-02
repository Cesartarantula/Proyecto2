//IE-0523 Circuitos Digitales II
//Proyecto2. demux.
//Elaborado por: César Valverde Zuñiga	A86605		
//I Ciclo 2019

// Este módulo genera las salidas dataout0 y dataout1, recibiendo como entrada datain a una frecuencia de f.

//`timescale 1ns/100ps

module demux(		input clk,
				input reset_L,
				input valid_in,
				input [3:0] data_in,
				output reg [3:0] dataout0,
				output reg [3:0] dataout1,
				output reg valid_0,
            			output reg valid_1
);

        //Registros Internos
	reg selectorL1;

	always @(posedge clk) begin
		selectorL1 <= ~selectorL1;
		if((!reset_L))begin
		dataout1<= 0;
		dataout0 <= 0;
		valid_0 <= 0;
           	valid_1 <= 0;
           	selectorL1 <= 0;
		end
		else if (~valid_in)begin
				if (valid_0==0)begin
				dataout0 <= 0;
				end
				else begin
				valid_0 <= 0;
				end 
				if (valid_1==0)begin
				dataout1 <= 0;
				end
				else if (valid_1==1)begin
				valid_1 <= 0;
				end 
			end
		else if(valid_in)begin 
				if(~selectorL1)begin
					dataout1 <= data_in;
					valid_1 <=1;
					valid_0 <=0;

				end
				else begin
					dataout0 <= data_in;
					valid_0 <= 1;
					valid_1 <=0;
				end
		end
	  end
	
endmodule