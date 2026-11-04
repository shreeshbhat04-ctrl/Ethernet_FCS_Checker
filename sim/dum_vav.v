`timescale 1ns/1ps

module dump_wav;
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tt_um_ethernet_fcs_checker);
    end
endmodule