// A simple makefile to execute all the above codes in a faster manner in Questa Sim tool

make_help:
        @echo    "clean         =>      Clean the earlier log and intermediate files"
        @echo   "run_test_1      =>      Compile and Run class_property_access.sv  simulation in Batch Mode"
        @echo   "run_sim_1      =>      Compile and Run assignment3_1.sv  simulation in Batch Mode"


run_test_1: clean run_sim_1

run_sim_1:
        qverilog ../tb/class_property_access.sv
clean:
        rm -rf  transcript* *log* work vsim.wlf fcover* covhtml* mem_cov*


run_test_2: clean run_sim_2

run_sim_2:
        qverilog ../tb/assignment3_1.sv

run_test_3: clean run_sim_3

run_sim_3:
        qverilog ../tb/assignment3_2.sv

run_test_4: clean run_sim_4
run_sim_4:      
        qverilog ../tb/assignment3_3.sv

run_test_5: clean run_sim_5
run_sim_5:      
        qverilog ../tb/assignment3_4.sv

run_test_6: clean run_sim_6
run_sim_6:      
        qverilog ../tb/assignment3_5.sv

run_test_7: clean run_sim_7
run_sim_7:     
        qverilog ../tb/assignment3_6.sv

run_test_8: clean run_sim_8
run_sim_8:      
        qverilog ../tb/assignment3_7.sv

run_test_9: clean run_sim_9
run_sim_9:
        qverilog ../tb/assignment3_8.sv

run_test_10: clean run_sim_10
run_sim_10:
        qverilog ../tb/assignment3_9.sv

run_test_11: clean run_sim_11
run_sim_11: 
        qverilog ../tb/assignment3_10.sv

run_test_12: clean run_sim_12
run_sim_12:
        qverilog ../tb/assignment3_11.sv

run_test_13: clean run_sim_13
run_sim_13: 
        qverilog ../tb/assignment3_12.sv


run_test_14: clean run_sim_14
run_sim_14:     
        qverilog ../tb/assignment3_13.sv

run_test_15: clean run_sim_15
run_sim_15:
        qverilog ../tb/assignment3_14.sv

run_test_16: clean run_sim_16
run_sim_16:
        qverilog ../tb/assignment3_15.sv

run_test_17: clean run_sim_17
run_sim_17:
        qverilog ../tb/assignment3_16.sv

run_test_18: clean run_sim_18
run_sim_18:
        qverilog ../tb/assignment3_17.sv

run_test_19: clean run_sim_19
run_sim_19:
        qverilog ../tb/assignment3_18.sv

run_test_20: clean run_sim_20
run_sim_20:
        qverilog ../tb/assignment3_19.sv

run_test_21: clean run_sim_21
run_sim_21:
        qverilog ../tb/assignment3_20.sv

run_test_22: clean run_sim_22
run_sim_22:
        qverilog ../tb/assignment3_21.sv

run_test_23: clean run_sim_23
run_sim_23:
        qverilog ../tb/assignment3_22.sv

run_test_24: clean run_sim_24
run_sim_24:
        qverilog ../tb/assignment3_23.sv

run_test_25: clean run_sim_25
run_sim_25:
        qverilog ../tb/assignment3_24.sv
