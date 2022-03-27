// Code your design here

module Contador4B ( input logic clock, 
                          logic reset, 
                          logic load,
                          logic up_down,
                          logic [3:0] entrada,
                   output logic [3:0] contador);
  
  always_ff @(negedge reset or posedge clock) 

begin

  if(reset) 
    
    if(load)
      contador <= entrada;
  	
  	else
        
      if(up_down)

          contador <= contador + 4'd1;

      else
          contador <= contador - 4'd1;

  else
      contador <= 4'd0;
    

end
endmodule

