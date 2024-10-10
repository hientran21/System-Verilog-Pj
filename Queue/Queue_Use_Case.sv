module queue_example2();
    bit [7:0] sampled_data, received_data;
    bit [7:0] buffer [$]; // queue which can hold 8-bit data

    // Sampling unit
    always begin
        sampled_data = $urandom_range(255);
        $display("[%0t]Sampled value is %0d\n", $time, sampled_data);
        buffer.push_back(sampled_data);
        #10;
    end

    // processing unit
    always begin
        $display("[%0t]Number of elements present in queue in %0d", $time, buffer.size());
        $display("[%0t]Values stored in buffer is %p", $time, buffer);
        received_data = buffer.pop_front();
        $display("[%0t]Recieved value is %0d\n", $time, received_data);
        #20;
    end
endmodule