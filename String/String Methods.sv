module tb;
  
  string str = "Hello World!";
  
  initial begin 
    string tmp;
 
    // Print length of string "str" 
    $display ("str.len() = %0d", str.len());
    
    // Assign to tmp variable and put char "d" at index 3 
    tmp = str;
    tmp.putc(3,"d"); 
    $display ("str.putc(3, d) = %s", tmp);
    
  	// Get the character at index 2 
    $display ("str.getc(2) = %s (%d)", str.getc(2), str.getc(2));
 	   
 	 // Convert all characters to lower case 
    $display ("str.tolower() %s", str.tolower());
    
    // Convert all characters to upper case 
    $display ("str.toupper() %s", str.toupper());
    
    // Comparison with Case Sensitive
    tmp = "Hello World!";
    $display ("[tmp, str are same] str.compare(tmp) = %0d", str.compare(tmp)); 
    tmp = "How are you?";
    $display ("[tmp, str are diff] str.compare(tmp) = %0d", str.compare(tmp));
    
    // Ignore Case Sensitive
    tmp = "hello world!";
    $display ("[tmp is in lowercase] str.compare(tmp) %0d", str.icompare(tmp)); 
    tmp = "HELLO WOrld!";
    $display ("[tmp, str are same] str.compare(tmp) = %0d", str.icompare(tmp));
    
    // Extract new string from i to j
    $display ("str.substr(4,8)= %s", str.substr (4,8));
  end
endmodule