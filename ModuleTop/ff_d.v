module ff_d # (parameter N=1) (output reg [N-1:0] Data_Out,
                     input              clk,
                     input              reset_L,
                     input      [N-1:0] Data_in);

always@(posedge clk) begin
    if(!reset_L) begin
        Data_Out<=0;
    end 
    else begin
        Data_Out <=Data_in;
    end 
end 
                     
endmodule
