module Contador (
    input  wire clk,
    input  wire rst_n,

    input  wire acrescer,
    input  wire decrecer,

    output reg [7:0] saida
);


   always @(posedge clk or negedge rst_n) begin 
    if (!rst_n) begin
        saida <= 8'h6a; 
    end else begin
        if(acrescer && !decrecer) begin 
            saida <= saida + 1;
        end
        if(!acrescer && decrecer) begin  
            saida <= saida - 1; 
        end 
    end
   end

endmodule
