module unpacked_arr_ex;
    //  unpacked array declared using size of array
    byte arr1[4];
    //  unpacked array declared using mixed approch
    byte arr2[2][3:0];

    initial begin
      //arr1 = 32;  NOT ALLOWED
        arr1 = '{23, 32, 45, 20};
        $display("Arr1 is %p", arr1);

        //  assignment with only one index
        arr2 [1] = '{8'h34, 12, 'hA, 'hF};
        arr2 [0][0] = 8'h67;
        arr2 [0][3:2] = '{45, 78};

        $display("Arr2 is %p", arr2);

        //  Multiple operator are nested for multi-dimensional
        arr2 = '{'{34, 56, 87, 23}, '{12, 34, 57, 68}};
        $display("Arr2 is %p", arr2);
        $display("Arr2[0] is %p", arr2[0]);
        $display("Arr2[1] is %p", arr2[1]);
        $display("Arr2[0][2] is %p", arr2[0][2]);
        $display("Arr2[1][3:2] is %p", arr2[1][3:2]);
    end
endmodule