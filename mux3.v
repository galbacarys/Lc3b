/* Module: mux3();
*
*  Parameter:
*      In:      in0 - First 16-bit input value
*               in1 - Second 16-bit input value
*               in2 - Third 16-bit input value
*               select - 2-bit select line that sends the corresponding input value to the output
*      Out:     out - 1-bit output value bit selected from 'in'
*
*  Description: The module outputs one of three 16-bit input values based on the select value.
*
*  Author: Patrick Reynolds
*/

module mux3 (
	in0,
	in1,
	in2,
	select,
	out
);

input [15:0] in0, in1, in2;
input [1:0] select;
output [15:0] out;

always @(*) begin
	case(select)
		2'd0: 
			out <= in0;
		2'd1:
			out <= in1;
		2'd2:
			out <= in2;
	endcase
end
endmodule