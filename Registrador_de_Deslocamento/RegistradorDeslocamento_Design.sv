// Code your design here

module RDP (PL_, clock1, clock2, P0, P1, P2, P3, P4, P5, P6, P7, Q7, Q7_, DS, registrador);
  
  
  input logic PL_, clock1, clock2, DS, P0, P1, P2, P3, P4, P5, P6, P7;
  output reg [7:0] registrador = 8'd0;
  output logic Q7, Q7_;
  

  always_ff @ ((posedge clock1 iff !clock2) or (posedge clock2 iff !clock1))
	
    if (PL_)
      begin
       
        Q7 <= registrador[0];
        Q7_ <= ~registrador[0];
        
        registrador <= registrador >> 1;
        
        registrador[7] <= DS;
        
      end
  
  	else
    	
      begin 
        
        registrador = {P0, P1, P2, P3, P4, P5, P6, P7};
       
        /*
        registrador[0] <= P0;
        registrador[1] <= P1;
        registrador[2] <= P2;
        registrador[3] <= P3;
        registrador[4] <= P4;
        registrador[5] <= P5;
        registrador[6] <= P6;
        registrador[7] <= P7;
        */

      end

endmodule



  
