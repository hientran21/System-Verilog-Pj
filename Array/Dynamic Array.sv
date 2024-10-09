module dynamic_array;
    int arr1 [];
    int arr2 [];

    // This is show error as packed arrays
    // can not be dynamic
    // bit [] arr3;

    initial begin
        // Assigning values to the array.
        // Size is automatically determined.
        arr1 = '{12, 23, 34};
        $display("Size of arr1 = %0d", arr1.size());

        // Copying arr1 to arr2
        arr2 = arr1;

        // Array is copied. It can be verified by changing
        // a element of arr2 or arr1. The change is not
        // reflected in other array
        arr2[1] = 67;
        $display("\nChaning values\narr1 = %p", arr1);
        $display("arr2 = %p", arr2);

        arr1[0] = 56;
        $display("arr1 = %p", arr1);
        $display("arr2 = %p", arr2);

        // Changing size of arr2 while keeping the
        // old data
        arr2 = new[6](arr2);
        $display("\nChanging size\narr2 = %p", arr2);
        $display("size of arr2 = %0d", arr2.size());

        // In this the siE is changed but older
        // data is removed
        arr2 = new[4];
        $display("\nChanging size\narr2 = %p", arr2);
        $display("size of arr2 = %0d", arr2.size());

        // Deletes arr1
        arr1.delete();
        $display("\nDeleting arr1\narr1 = %p", arr1);
        $display("size of arr1 = %0d", arr1.size());
    end
endmodule