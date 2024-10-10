module queue_func_example();
    bit [7:0] queue [$]; // queue which can hold 8-bit data

    initial begin
        $display("Number of elements present in queue in %0d", queue.size());
        queue.push_back(34);
        queue.push_back(67);
        queue.push_back(123);
        $display("Values stored in queue after push_back are %p", queue);

        queue.push_front(212);
        $display("Values stored in queue after push_front are %p", queue);

        $display("Number of elements present in queue in %0d", queue.size());

        $display("Poped value from back = %0d", queue.pop_back());
        $display("Values stored in queue after pop_back are %p", queue);

        $display("Poped value from front = %0d", queue.pop_front());
        $display("Values stored in queue after pop_back are %p", queue);

        // Note that index starts from 0
        queue.insert(1, 56);
        $display("Values stored in queue after insert at 2nd position are %p", queue);

        queue.delete(1);   // deletes item at index 1
        $display("Values stored in queue after deleting item at 1st position are %p", queue);

        queue.delete();    // delets all the item
        $display("Values stored in queue after deleting all item are %p", queue);
    end
endmodule