module mux(input clk, 
			 input reset_L,
			 input valid_in_VC0, //Señal de pop proveniente del fifo
			 input valid_in_VC1,	
			 input [5:0] data_in_VC0,
			 input [5:0] data_in_VC1,
			 output reg [5:0] dataout,
			 output reg valid_out); // Le indica al demux anterior a
									// D0 y D1 que transfiere datos

    //Registros Internos
	reg selectorL1;

always @(*) begin
	if(!valid_in_VC0 && valid_in_VC1)
	selectorL1 <=1;
	else begin
	selectorL1 <=0;
	end 
	
end

	always @(posedge clk) begin
		if((!reset_L))begin
		dataout<= 0;
		valid_out <= 0; 
		end
		else if (valid_in_VC0 && !selectorL1) begin
			dataout <= data_in_VC0;
			valid_out <= 1;
		    end
	    else if (valid_in_VC1 && selectorL1) begin
			dataout <= data_in_VC1;
			valid_out <= 1;
			end
		else begin
		dataout <= 0;
		valid_out <= 0;
		end
	end

endmodule
