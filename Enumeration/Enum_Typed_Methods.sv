  // GREEN = 0, YELLOW = 1, RED 2, BLUE = 3
  typedef enum {GREEN, YELLOW, RED, BLUE} colors;

  module tb;
  
  initial begin
  
    colors color;  // Initial value of enum varialbe is the first constant value => GREEN
    $display ("color = %0d, %0s", color, color.name());	
	
	color = YELLOW; // Assign current value of color to YELLOW color YELLOW
	$display ("color.first() = %0d", color.first()); // First value is GREEN = 0
	$display ("color.last() = %0d", color.last());   // Last value is BLUE = 3
    $display ("color.next() = %0d", color.next());   // Next value is RED = 2
	$display ("color.prev() = %0d", color.prev());   // Previous value is GREEN = 0
	$display ("color.num() = %0d", color.num());     // Total number of enum = 4
	$display ("color.name() = %s", color.name());    // Name of the current enum
  end

endmodule