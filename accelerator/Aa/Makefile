# build software version of testbench (to check the "desired behaviour")
AHIR_INCLUDE=$(AHIR_RELEASE)/include
AHIR_LIB=$(AHIR_RELEASE)/lib
VHDL_LIB=$(AHIR_RELEASE)/vhdl
VHDL_VHPI_LIB=$(AHIR_RELEASE)/CtestBench/vhdl
FUNCTIONLIB=$(AHIR_RELEASE)/functionLibrary/
SRC=./src
all: HW 
TOVC:aalink aa2vc 
VC2VHDL: vc2vhdl  
TOVHDL:TOVC vc2vhdl


TOPMODULES=-T accelerator_control_daemon -T accelerator_worker_daemon -T accelerator_interrupt_daemon



# five steps from C to vhdl simulator.
HW: aalink aa2vc  vc2vhdl 

AA2VHDL: aa2vc vc2vhdl vhdlsim

# Aa to vC
aalink: $(SRC)/accelerator.aa  $(SRC)/pipes.aa 
	rm -rf .Aa
	mkdir .Aa
	AaLinkExtMem $(SRC)/pipes.aa  $(SRC)/accelerator.aa | vcFormat > prog.linked.aa
	AaOpt -B prog.linked.aa | vcFormat > .Aa/prog.linked.opt.aa

aa2vc: .Aa/prog.linked.opt.aa
	rm -rf .vC
	mkdir .vC
	Aa2VC -O -C .Aa/prog.linked.opt.aa | vcFormat > .vC/prog.vc

# vC to VHDL
vc2vhdl: .vC/prog.vc
	rm -rf vhdl
	mkdir vhdl
	mkdir vhdl/work
	mkdir vhdl/test_bench
	vc2vhdl -U  -O -S 4 -I 2  -a -C -e accelerator -w -s ghdl $(TOPMODULES) -f .vC/prog.vc -L $(FUNCTIONLIB)/fpu.list
	vhdlFormat < accelerator_global_package.unformatted_vhdl > vhdl/work/accelerator_global_package.vhdl
	vhdlFormat < accelerator.unformatted_vhdl > vhdl/work/accelerator.vhdl
	vhdlFormat < accelerator_test_bench.unformatted_vhdl > vhdl/test_bench/accelerator_test_bench.vhdl
	rm -f *unformatted_vhdl

clean:
	rm -rf *.o* *.cf *.*vhdl vhdlCStubs.* *.vcd in_data* out_data* testbench_sw testbench_hw accelerator_test_bench vhpi.log *.aa *.vc *.lso xst *.ngc *_xmsgs *.xrpt pipeHandler.log *.srp *.ghw *.dot .Aa .vC

PHONY: all clean	
