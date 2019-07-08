
module dual_port_memory # ( parameter DATA_WIDTH= 6, parameter ADDR_WIDTH=8, parameter MEM_SIZE=7 )// Constantes
(
	input wire						Clock,
	input wire						iWriteEnable,
	input wire						iReadEnable,
	input wire [ADDR_WIDTH-1:0]	iReadAddress,// Dirección de leer
	input wire [ADDR_WIDTH-1:0]	iWriteAddress,// Dirección de escribir
	input wire [DATA_WIDTH-1:0]		 	iDataIn,
	output reg [DATA_WIDTH-1:0] 		oDataOut);//Salida de datos

reg [DATA_WIDTH-1:0] Ram [MEM_SIZE:0]; //Creación de la memoria

always @(posedge Clock)
begin

		if (iWriteEnable) begin
			Ram[iWriteAddress] <= iDataIn;
			end
end

always @(*) begin
	if(iReadEnable) begin
	oDataOut = Ram[iReadAddress];
	end
	else begin
	oDataOut = 0;
	end
end

endmodule
