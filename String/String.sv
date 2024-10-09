module tb();
  string s = "hello world";
  
  initial begin
    $display ("string = %s",s);
    
    // s[0] = h --> s[10] = d
    foreach (s[i]) begin
      $display ("string[%0d] = %s",i,s[i]);
    end
  end
endmodule