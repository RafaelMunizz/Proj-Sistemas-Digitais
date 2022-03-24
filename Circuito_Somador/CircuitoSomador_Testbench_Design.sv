module somadorcompleto( a, b, cin, s, cout);
  
  //Portas
  input bit a, b, cin;
  output bit s, cout;
  
  wire w1, w2, w3;
  
  //Abordagem estrutural
  xor u0 (w1, a, b);
  xor u1 (s, w1, cin);
  and u2 (w2, cin, w1);
  and u3 (w3, a, b);
  or u4 (cout, w2, w3);

endmodule

module somador4b ( a, b, cin, s, cout);
  
  //Entradas/Saídas
  input [3:0] a, b;
  
  wire a = 4'b1000;
  wire b = 4'b1010;
  
  input cin;
  output [3:0] s;
  output cout;
  
  wire c1, c2, c3, cout;
  
  //Abordagem hierarquica
  somadorcompleto fa0 (.a(a[0]), .b(b[0]), .cin(cin), .s(s[0]), .cout(c1));
  somadorcompleto fa1 (.a(a[1]), .b(b[1]), .cin(c1), .s(s[1]), .cout(c2));
  somadorcompleto fa2 (.a(a[2]), .b(b[2]), .cin(c2), .s(s[2]), .cout(c3));
  somadorcompleto fa3 (.a(a[3]), .b(b[3]), .cin(c3), .s(s[3]), .cout(cout));
  output_flag(cout);
endmodule


module output_flag (input logic cout);
  
  bit[1:0] flag;
 
  always_comb begin
    if(cout) begin
      flag = 1'b1;
    end
    else begin
      flag = 1'b0;
    end
  end
  
  initial begin
    $display("\n\nFlag = %b \n\n", flag);
  end
  
endmodule
