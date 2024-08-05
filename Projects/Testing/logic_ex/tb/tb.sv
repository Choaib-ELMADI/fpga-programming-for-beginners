`timescale 1ns/100ps;

module tb;
    logic [1:0] SW;
    logic [3:0] LED;

    logic_ex u_logic_ex (.*);
    //logic_ex u_logic_ex (.SW, .LED);
    //logic_ex u_logic_ex (.SW(switch_sig), .LED(led_sig));
    //logic_ex u_logic_ex (.*, .LED(led_sig));
