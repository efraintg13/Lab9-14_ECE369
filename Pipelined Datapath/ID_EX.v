`timescale 1ns / 1ps

module ID_EX(Clk, in_ReadData1, out_ReadData1, in_ReadData2, out_ReadData2, in_SignExtend, out_SignExtend, in_rd_i, out_rd_i, in_rd_r, out_rd_r, in_ALUSrc, out_ALUSrc, in_ALUOP,
             out_ALUOP, in_RegDst, out_RegDst, in_MemWrite, out_MemWrite, in_MemRead,out_MemRead, in_MemToReg, out_MemToReg, in_RegWrite, out_RegWrite, in_ALUSft, out_ALUSft,
             in_ZE, out_ZE, in_SEMCtrl, out_SEMCtrl, in_JALSrc, out_JALSrc, in_rs, out_rs, in_rt, out_rt, in_ZEROsrc, out_ZEROsrc, in_Address, out_Address, JZEROSrc, 
             ID_EX_JZEROSrc);

input Clk, in_ALUSrc, in_RegDst, in_MemWrite, in_MemRead, in_MemToReg, in_RegWrite, in_ALUSft, JZEROSrc, in_JALSrc, in_ZEROsrc;
input [1:0] in_SEMCtrl;
input [31:0] in_ReadData1, in_ReadData2, in_immediate_extended, in_ZE, in_address;
input [4:0] in_rd_i, in_rd_r, in_rs, in_rt;
input [5:0] in_ALUOP;

output reg out_ALUSrc, out_RegDst, out_MemWrite, out_MemRead, out_MemToReg, out_RegWrite, out_ALUSft, ID_EX_JZEROSrc, out_JALSrc, out_ZEROsrc;
output reg [1:0] out_SEMCtrl;
output reg [31:0] out_ReadData1, out_ReadData2, out_SignExtended, out_ZE, out_Address;
output reg [4:0] out_rd_i, out_rd_r, out_rs, out_rt;
output reg [5:0] out_ALUOP;

    initial begin

        ID_EX_JZEROSrc   <= 0;
	      out_Address      <= 0;
	      out_ALUOP        <= 0;
	      out_ALUSft       <= 0;
	      out_ALUSrc       <= 0;
        out_JALSrc       <= 0;
        out_MemRead      <= 0;
        out_MemToReg     <= 0;
        out_MemWrite     <= 0;
        out_rd_i         <= 0;
        out_rd_r         <= 0;
        out_ReadData1    <= 0;
        out_ReadData2    <= 0;
        out_RegDst       <= 0;
        out_RegWrite     <= 0;
        out_rs           <= 0;
        out_rt           <= 0;
        out_SEMCtrl      <= 0;
	      out_SignExtended <= 0;
        out_ZE           <= 0;
        out_ZEROsrc      <= 0;

    end
    
    always @ (posedge Clk)  begin
    	
	      ID_EX_JZEROSrc   <= JZEROSrc;
        out_Address      <= in_Address;
        out_ALUOP        <= in_ALUOP;
        out_ALUSft       <= in_ALUSft;
        out_ALUSrc       <= in_ALUSrc;
        out_JALSrc       <= in_JALSrc;
        out_MemRead      <= in_MemRead;
        out_MemToReg     <= in_MemToReg;
        out_MemWrite     <= in_MemWrite;
        out_rd_i         <= in_rd_i;
        out_rd_r         <= in_rd_r;
        out_ReadData1    <= in_ReadData1;
        out_ReadData2    <= in_ReadData2;
        out_RegDst       <= in_RegDst;
        out_RegWrite     <= in_RegWrite;
        out_rs           <= in_rs;
        out_rt           <= in_rt;
        out_SEMCtrl      <= in_SEMCtrl;
        out_SignExtended <= in_SignExtended;
        out_ZE           <= in_ZE;
        out_ZEROsrc      <= in_ZEROsrc;
  
    end

endmodule
