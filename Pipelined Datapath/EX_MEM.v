`timescale 1ns / 1ps

module EX_MEM_Register(Clk, in_ALU_out, out_ALU_out, in_ReadData_2, out_ReadData_2, in_DestReg, out_DestReg, in_MemWrite, in_MemRead, in_MemToReg, in_RegWrite,out_MemWrite,
                       out_MemRead, out_MemToReg, out_RegWrite, in_SEMCtrl, out_SEMCtrl, in_JLAdder, out_JLAdder, in_JALSrc, out_JALSrc, in_rt, out_rt);

input Clk, in_MemWrite, in_MemRead, in_MemToReg, in_RegWrite, in_JALSrc;
input [1:0] in_SEMCtrl;
input [31:0] in_ALU_out, in_ReadData_2, in_JLAdder;
input [4:0] in_DestReg, in_rt;

output reg out_MemWrite, out_MemRead, out_MemToReg, out_RegWrite, out_JALSrc;
output reg [1:0] out_SEMCtrl;
output reg [31:0] out_ALU_out, out_ReadData_2, out_JLAdder;
output reg [4:0] out_DestReg, out_rt;

    initial begin

        out_ALU_out    <= 0;
        out_DestReg    <= 0;
        out_JALSrc     <= 0;
        out_JLAdder    <= 0;
        out_MemRead    <= 0;
        out_MemToReg   <= 0;
        out_MemWrite   <= 0;
        out_ReadData_2 <= 0;
        out_RegWrite   <= 0;
        out_rt         <= 0;
        out_SEMCtrl    <= 0;

    end

    always @ (posedge Clk)  begin

        out_ALU_out    <= in_ALU_out;
        out_DestReg    <= in_DestReg;
        out_JALSrc     <= in_JALSrc;
        out_JLAdder    <= in_JLAdder;
        out_MemRead    <= in_MemRead;
        out_MemToReg   <= in_MemToReg;
        out_MemWrite   <= in_MemWrite;
        out_ReadData_2 <= in_ReadData_2;
        out_RegWrite   <= in_RegWrite;
        out_rt         <= in_rt;
        out_SEMCtrl    <= in_SEMCtrl;

    end

endmodule
