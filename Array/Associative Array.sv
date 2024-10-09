module associative_array();
    int num_cars[string];

    initial begin
        num_cars = '{"hyndai":2, "suzuki":1, "tata": 3};

        $display("Number of cars = %p", num_cars);
        $display("Number of cars for Suzuki is = %0d", num_cars["suzuki"]);
    end
endmodule

module associative_array_methods();
    int num_cars[string];
    string brand;
    initial begin
        num_cars = '{"hyundai":2, "suzuki":1, "tata": 3};

        $display("Number of cars = %p", num_cars);
        $display("Number of cars for Suzuki is = %0d", num_cars["suzuki"]);

        // num and size
        $display("Number of brands stored = %0d", num_cars.num());
        $display("Size of the array = %0d\n", num_cars.size());

        // get first brand stored in array
        if(num_cars.first(brand))
            $display("First brand found is = %s", brand);

        // get last brand stored in array
        if(num_cars.last(brand))
            $display("Last brand found is = %s\n", brand);

        // get brand stored before last one
        if(num_cars.prev(brand))
            $display("Brand previous to last brand found is = %s", brand);

        // get brand stored before last one
        if(num_cars.next(brand))
            $display("Brand next to last brand found is = %s\n", brand);

        // get brand stored before last one
        if(num_cars.next(brand))
            $display("Brand next to last brand found is = %s\n", brand);
        else
            $display("Either no brand found or this is the last brand\n");

        // check whether a particular brand found or not
        brand = "suzuki";
        if(num_cars.exists(brand))
            $display("Enteries found for %s", brand);
        else
            $display("No enteries found for %s", brand);

        // check whether a particular brand found or not
        brand = "ferrari";
        if(num_cars.exists(brand))
            $display("Enteries found for %s\n", brand);
        else
            $display("No enteries found for %s\n", brand);

        // delete the array
        num_cars.delete();
        $display("Number of brands after deleting = %0d", num_cars.num());
    end
endmodule