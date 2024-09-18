# build software version of testbench (to check the "desired behaviour")
AHIR_INCLUDE=$(AHIR_RELEASE)/include
AHIR_LIB=$(AHIR_RELEASE)/lib
VHDL_LIB=$(AHIR_RELEASE)/vhdl
VHDL_VHPI_LIB=$(AHIR_RELEASE)/CtestBench/vhdl
FUNCTIONLIB=$(AHIR_RELEASE)/functionLibrary/
SRCS = ../Aa/src/accelerator.aa  ../Aa/src/pipes.aa  src/pipes.aa src/tester.aa 
all: HW 
TOVC:aalink aa2vc 
VC2VHDL: vc2vhdl  vhdlsim
TOVHDL:TOVC vc2vhdl


TOPMODULES=-T accelerator_control_daemon -T accelerator_worker_daemon  -T tester_control_daemon -T tester_memory_access_daemon -T interrupt_daemon -T accelerator_interrupt_daemon



# five steps from C to vhdl simulator.
HW: aalink aa2vc  vc2vhdl  vhdltb ghdlsim

AA2VHDL: aa2vc vc2vhdl vhdlsim

# Aa to vC
aalink: src/tester.aa 
	AaLinkExtMem $(SRCS) | vcFormat > prog.linked.aa
	AaOpt -B prog.linked.aa | vcFormat > prog.linked.opt.aa

aa2vc: prog.linked.opt.aa
	Aa2VC -O -C prog.linked.opt.aa | vcFormat > prog.vc

# vC to VHDL
vc2vhdl: prog.vc
	vc2vhdl -U  -O -S 4 -I 2 -v -a -C -e accelerator_test -w -s ghdl $(TOPMODULES) -f prog.vc -L $(FUNCTIONLIB)/fpu.list
	vhdlFormat < accelerator_test_global_package.unformatted_vhdl > accelerator_test_global_package.vhdl
	vhdlFormat < accelerator_test.unformatted_vhdl > accelerator_test.vhdl
	vhdlFormat < accelerator_test_test_bench.unformatted_vhdl > accelerator_test_test_bench.vhdl

# build testbench and ghdl executable
# note the use of libVhpi in building the testbench.
vhdltb: accelerator_test.vhdl accelerator_test_test_bench.vhdl tb/test_accelerator.c vhdlCStubs.h vhdlCStubs.c
	gcc -c vhdlCStubs.c  -I ./  -I$(AHIR_INCLUDE)
	gcc -c tb/test_accelerator.c -I$(AHIR_INCLUDE) -I$(SRC) -I./
	gcc -o test_accelerator_hw test_accelerator.o vhdlCStubs.o  -L$(AHIR_LIB) -lSocketLibPipeHandler -lpthread

ghdlsim: accelerator_test.vhdl accelerator_test_test_bench.vhdl 
	ghdl --clean
	ghdl --remove
	ghdl -i --work=GhdlLink  $(VHDL_LIB)/GhdlLink.vhdl
	ghdl -i --work=aHiR_ieee_proposed  $(VHDL_LIB)/aHiR_ieee_proposed.vhdl
	ghdl -i --work=ahir  $(VHDL_LIB)/ahir.vhdl
	ghdl -i --work=work accelerator_test_global_package.vhdl
	ghdl -i --work=work accelerator_test.vhdl
	ghdl -i --work=work accelerator_test_test_bench.vhdl
	ghdl -m --work=work -Wl,-L$(AHIR_LIB) -Wl,-lVhpi accelerator_test_test_bench 

clean:
	rm -rf *.o* *.cf *.*vhdl vhdlCStubs.* *.vcd in_data* out_data* test_accelerator_sw test_accelerator_hw accelerator_test_test_bench vhpi.log *.aa *.vc *.lso xst *.ngc *_xmsgs *.xrpt pipeHandler.log *.srp *.ghw *.dot

PHONY: all clean	
