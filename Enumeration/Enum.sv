module tb();
  
  enum {red,green,yellow} color_e;                // enum variable
  typedef enum {monday,wednesday,thursday} dow_e; // enum data type
  dow_e day;
  
  initial begin
    $display ("color_e = %0d, color_e = %s",color_e,color_e.name());
    $display ("day = %0d, day = %s",day,day.name());
    
    color_e = yellow; // color_e = color_e'(2); invalid
    day = dow_e'(1);
    $display ("color_e = %0d, color_e = %s",color_e,color_e.name());
    $display ("day = %0d, day = %s",day,day.name());
    
    if (color_e == 2) $display ("it works");    
  end
  
endmodule