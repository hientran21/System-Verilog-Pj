module dyn_associative_array();
    int marks [][string];
    string sub;
    initial begin
        marks = new [2];

        marks[0] = '{"physics":45, "maths": 65, "emt": 56};
        marks[1] = '{"chemistry":67, "maths": 78, "optical communication": 89};

        foreach (marks[i]) begin
            $display("Marks of student %0d is %p", i+1, marks[i]);
        end

        if(marks[0].first(sub))
            $display("Frist subject of student 1 is: %s", sub);
    end
endmodule