// String Operator

module tb();
  string firstname = "Joey";
  string lastname = "Andrew";
  int i = 5; // replication variable for string
   
  initial begin

  // String Equality Check if firstname equals or not equals lastname 
    if (firstname == lastname) $display ("firstname = %s is EQUAL to lastname = %s", firstname, lastname);
    if (firstname != lastname) $display ("firstname = %s is NOT EQUAL to lastname = %s", firstname, lastname);
    
  // String Comparison: Check if length of firstname < length of lastname 
    if (firstname < lastname) $display ("firstname = %s is LESS THAN lastname = %s", firstname, lastname);
    
  // String Comparison: Check if length of firstname > length of lastname 
    if (firstname > lastname) $display ("firstname = %s is GREATER THAN lastname = %s", firstname, lastname);
    
  // String Concatenation Join first and last names into a single string 
    $display ("Full Name = %s", {firstname," ",lastname});
    
  // String Replication allow a variable for replication
    $display ("%s", {i{firstname," "}});
    
  // String Indexing: Get the ASCII character at index number 2 of both first and last names 
  	$display ("firstname[2]=%s lastname[2]=%s", firstname [2], lastname [2]);

   
  end
endmodule