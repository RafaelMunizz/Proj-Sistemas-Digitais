// Code your design here

module mux8canais(saida,seletor,entrada1,entrada2,entrada3,entrada4,entrada5,entrada6,entrada7,entrada8); 
  
  //Entradas
  input [7:0]  entrada1,entrada2,entrada3,entrada4,entrada5,entrada6,entrada7,entrada8; 
  
  //Seletor 3 bits
  input [2:0] seletor; 
  
  //Saída 
  output [7:0] saida; 
  reg [7:0] saida; 

//Check the state of the input lines 

always @ (entrada1, entrada2, entrada3, entrada4, entrada5, entrada6, entrada7, entrada8, seletor) 

begin case (seletor) 

  3'b000 : saida = entrada1; 
  3'b001 : saida = entrada2; 
  3'b010 : saida = entrada3; 
  3'b011 : saida = entrada4; 
  3'b100 : saida = entrada5; 
  3'b101 : saida = entrada6; 
  3'b110 : saida = entrada7; 
  3'b111 : saida = entrada8;
  // Saída indefinida
  default : saida = 8'bx; 

 endcase 
end  
endmodule
