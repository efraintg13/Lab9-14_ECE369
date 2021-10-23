`timescale 1ns / 1ps

module MEM_WB_Register(Clk, in_DataMemOut, out_DataMemOut, in_DestReg, out_DestReg, in_ALU_output, out_ALU_output, in_MemToReg, out_MemToReg, in_RegWrite, out_RegWrite,
                       in_JALSrc, out_JALSrc);
                       
                       
input Clk, in_MemToReg, in_RegWrite, in_JALSrc;
input [31:0] in_DataMemOut, in_ALU_output;
input [4:0] in_DestReg;

output reg out_MemToReg, out_RegWrite, out_JALSrc;
output reg [31:0]  out_DataMemOut, out_ALU_output;
output reg [4:0] out_DestReg;

    initial begin

        out_ALU_output           <= 0;
        out_DataMemOut           <= 0; 
        out_DestReg              <= 0; 
        out_JALSrc               <= 0;
        out_MemToReg             <= 0;
        out_RegWrite             <= 0;
    
    end


    always @ (posedge Clk)  begin

        out_ALU_output           <= in_ALU_output;
        out_DataMemOut           <= in_DataMemOut; 
        out_DestReg              <= in_DestReg; 
        out_JALSrc               <= in_JALSrc;
        out_MemToReg             <= in_MemToReg;
        out_RegWrite             <= in_RegWrite;
    
    end

endmodule
