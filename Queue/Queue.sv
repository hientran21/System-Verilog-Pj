module queue_example();
    bit[7:0] queue [$]; // queue which can hold 8-bit data
    initial begin
        queue[$+1] = 8'd21;
        queue[$+1] = 8'd45;
        queue[$+1] = 8'd87;
        queue[$+1] = 8'd159;
        queue[$+1] = 8'd77;
        $display("queue =  %p", queue);

        queue = '{8'd45, 8'd77, 8'd159, 8'd12};
        $display("queue %p", queue);
    end
endmodule