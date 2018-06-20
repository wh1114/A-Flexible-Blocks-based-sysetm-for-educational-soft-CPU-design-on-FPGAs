module en_buffer(en,buff_in,buff_out);

   parameter NrOfBits = 1;
	
	input en;
	input [NrOfBits-1:0] buff_in;
	
	output [NrOfBits-1:0] buff_out;
	
	assign buff_out = (en)? buff_in:{NrOfBits{1'bZ}};
	
endmodule