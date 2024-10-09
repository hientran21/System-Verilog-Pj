module foreach_example;
  int array[3][3][3] = '{'{'{1, 10, 100}, '{2, 20, 200}, '{3, 30, 300}},
                         '{'{4, 40, 400}, '{5, 50, 500}, '{6, 60, 600}},
                         '{'{7, 70, 700}, '{8, 80, 800}, '{9, 90, 900}}
                        };
  initial begin
    foreach (array[i,j,k]) begin
      $display("array[%0d][%0d][%0d] = %0d", i,j, k, array[i][j][k]);
    end
  end
endmodule

module array_example;
  bit [2:0][3:0] array = '{4'h2, 4'h4, 4'h6};
  initial begin
    foreach (array[i]) begin
      $display("array[%0h] = %0h", i, array[i]);
    end
  end
endmodule

module array_example;
  bit [4:0] array[2:0][1:0] = '{'{5'h5, 5'h1},
                                '{5'h10, 5'h2},
                                '{5'h15, 5'h3}
                               };
  initial begin
    foreach (array[i,j]) begin
      $display("array[%0h][%0h] = %0h", i, j, array[i][j]);
    end
  end
endmodule