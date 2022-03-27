// Classe para números aleatórios
class p_aleatorio;
  randc bit[3:0] data;
endclass
            
module mux8canaisTB;

 // Entradas
  reg [2:0] seletor;
  reg [7:0] entrada1, entrada2, entrada3, entrada4, entrada5, entrada6, entrada7, entrada8;

 // Saídas
  wire [7:0] saida;

  // Instancias
 mux8canais inst (.saida(saida), 
              .seletor(seletor), 
              .entrada1(entrada1), 
              .entrada2(entrada2),
              .entrada3(entrada3), 
              .entrada4(entrada4), 
              .entrada5(entrada5), 
              .entrada6(entrada6), 
              .entrada7(entrada7), 
              .entrada8(entrada8));
  
 initial begin

  seletor = 3'd0;
  entrada1 = 8'd15;
  entrada2 = 8'd30;
  entrada3 = 8'd60;
  entrada4 = 8'd75;
  entrada5 = 8'd90;
  entrada6 = 8'd100;
  entrada7 = 8'd150;
  entrada8 = 8'd200;
 end
  
  
 initial begin
   p_aleatorio num = new();
   
    repeat(5) begin
      
     num.randomize ();
     seletor = num.data;
      $monitor("\nSeletor = %b\nSaída = %b\n", seletor, saida);
      #10;
      
   end
  end
     
  /*
  // EPWave
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
  end
  */
  
endmodule
