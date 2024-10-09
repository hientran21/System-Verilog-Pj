module packed_arr_ex;
    //  declaring 3-D packed array
    //  total size - 256 bits
    bit [3:0][3:0][15:0] arr;

    initial begin
 		arr = 256'b0011;
        $display ("arr = %h",arr);
       
        //  assignment with only one index
        arr [1] = 64'h2548AA54;
        arr [3:2] = 128'h458AAC445AD;

        $display("Assignment with only one index");
        $display("Arr = %h", arr);
        $display("Arr[1] = %h", arr[1]);
        $display("Arr[3:2] = %h\n", arr[3:2]);

        //  assignment with 2 indices
        arr [0][0] = 16'h12;
        arr [0][3:2] = 16'h34;

        $display("Assignment with  2 indices");
        $display("Arr = %h", arr);
        $display("Arr[0][0] = %h", arr[0][0]);
        $display("Arr[0][3:2] = %h\n", arr[0][3:2]);

        //  assignment with 3 indices
        arr [0][1][9] = 1'b1;
        arr [0][1][8:0] = 9'h4;

        $display("Assignment with  3 indices");
        $display("Arr = %h", arr);
        $display("Arr[0][1][9] = %h", arr[0][1][9]);
        $display("Arr[0][1][8:0] = %h", arr[0][1][8:0]);
    end
endmodule