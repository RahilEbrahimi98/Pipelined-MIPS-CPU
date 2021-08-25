`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:31:03 07/03/2019
// Design Name:   MULTIPLEXER6_1
// Module Name:   E:/University/MEMARI/project5/project/MUX6__TEST.v
// Project Name:  project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MULTIPLEXER6_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX6__TEST;

	// Inputs
	reg [31:0] Data_in_0;
	reg [31:0] Data_in_1;
	reg [31:0] Data_in_2;
	reg [31:0] Data_in_3;
	reg [31:0] Data_in_4;
	reg [31:0] Data_in_5;
	reg INTT;
	reg [2:0] sel;

	// Outputs
	wire [31:0] Data_out;
	wire [31:0] EPC;

	// Instantiate the Unit Under Test (UUT)
	MULTIPLEXER6_1 uut (
		.Data_in_0(Data_in_0), 
		.Data_in_1(Data_in_1), 
		.Data_in_2(Data_in_2), 
		.Data_in_3(Data_in_3), 
		.Data_in_4(Data_in_4), 
		.Data_in_5(Data_in_5), 
		.INTT(INTT), 
		.sel(sel), 
		.Data_out(Data_out), 
		.EPC(EPC)
	);

	initial begin
		// Initialize Inputs
		Data_in_0 = 0;
		Data_in_1 = 0;
		Data_in_2 = 0;
		Data_in_3 = 0;
		Data_in_4 = 0;
		Data_in_5 = 0;
		INTT = 0;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
      Data_in_0 = 0;
		Data_in_1 = 0;
		Data_in_2 =3;
		Data_in_3 = 7;
		Data_in_4 = 1;
		Data_in_5 = 0;
		INTT = 0;
		sel = 2;  
		// Add stimulus here

	end
      
endmodule

