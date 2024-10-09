module tb;

  // GREEN = 0, YELLOW = 1, RED = 2, BLUE = 3
  typedef enum {GREEN, YELLOW, RED, BLUE} colors;
  int c = 0;
  
 initial begin 
   
    colors color;  // Initial value of enum varialbe is the first constant value => GREEN
    $display ("color = %0d, %0s", color, color.name());	
    
    c = color; // color is converted from enum to int
   
    color = colors'(5); // static cast -> out of range => invalid
    $display ("color = %0d, %0s", color, color.name());	
    
    if (!$cast(color,5)) // dynamic cast
      $display ("dynamic cast failed");
 end

endmodule