module structure();
    typedef struct {
        int roll;
        string name;
        int mark;
    } student;

    student s1, s2;
    initial begin
        s1 = '{ 23, "Amy", 78 };
        $display("s1 = %p", s1);
        $display("s2 = %p", s2);

        // chaning one of the element
        s1.name = "Leon";
        $display("s1 = %p", s1);

        // copyind one struct to another
        s2 = s1;
        $display("s2 = %p", s2);
    end
endmodule