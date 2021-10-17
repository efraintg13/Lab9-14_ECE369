`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369 - Computer Architecture
// 
// Module - DataMemory_tb.v
// Description - Test the 'DataMemory.v' module.
////////////////////////////////////////////////////////////////////////////////

module DataMemory_tb(); 

    reg     [31:0]  Address;
    reg     [31:0]  WriteData;
    reg             Clk;
    reg             MemWrite;
    reg             MemRead;

    wire [31:0] ReadData;

    DataMemory u0(
        .Address(Address), 
        .WriteData(WriteData), 
        .Clk(Clk), 
        .MemWrite(MemWrite), 
        .MemRead(MemRead), 
        .ReadData(ReadData)
    ); 

	initial begin
		Clk <= 1'b0;
		forever #10 Clk <= ~Clk;
	end

	initial begin
	
    /* Please fill in the implementation here... */
        #50;
        Address <= 32'd0; //0
        WriteData <= 32'd8; // 8
        MemWrite <= 1; // Allow to write
        MemRead <= 0;

        #50;
        Address <= 32'd0; //0
        WriteData <= 32'd8; // 8
        MemWrite <= 0; 
        MemRead <= 1; // Allow to read

        #50;
        Address <= 32'd25; //25
        WriteData <= 32'd10; // 10
        MemWrite <= 1; // Allow to write
        MemRead <= 0;

        #50;
        Address <= 32'd25; //25
        WriteData <= 32'd10; // 10
        MemWrite <= 0; 
        MemRead <= 1; // Allow to read

        #50
        MemRead <= 0;

        #50;
        Address <= 32'd22; //25
        WriteData <= 32'd10; // 10
        MemWrite <= 0; 
        MemRead <= 1; // Allow to read

        #50;
	end

endmodule

