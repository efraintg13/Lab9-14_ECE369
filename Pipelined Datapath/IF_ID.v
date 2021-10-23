`timescale 1ns / 1ps

module IF_ID(Clk, in_Adder4, out_Adder4, in_InstructionMemory, out_InstructionMemory);
    
    input Clk;
    input [31:0] in_Instruction, in_PCplus4;
    output reg [31:0] out_Instruction, out_PCplus4;
    
    initial begin

            out_Instruction <= 0;
            out_PCplus4 <= 0;

    end

    always @ (posedge Clk)  begin
        
        begin   
            out_Instruction <= in_Instruction;

            out_PCplus4 <= in_PCplus4;

        end

    end
    
endmodule
