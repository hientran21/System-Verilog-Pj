module associative_dyn_array();
    int num_cars[string];
    string car_name[string][];

    string brand;
    initial begin
        num_cars = '{"abc":2, "xyz":1, "efg": 3};

        foreach (num_cars[brand]) begin
            car_name[brand] = new [num_cars[brand]];
            for (int i=0; i<car_name[brand].size(); ++i) begin
                car_name[brand][i] = $sformatf("%s i%0d", brand, (i+1)*10);
            end
            $display("Cars for %s brand are: %p", brand, car_name[brand]);
        end
    end
endmodule