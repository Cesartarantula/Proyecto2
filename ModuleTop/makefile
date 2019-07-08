.PHONY: all simu run com synth clean cleanall

#Objects 
OBJS = dut.v
EXE = dut.o
VCD = test.vcd
FSYNTH = sintetizador.ys

#Programs
YS = yosys
C = iverilog
VVP = vvp
VIEW = gtkwave

#Targets
all: synth com run simu

#waveform viewer with gtkwave
runtest: com run simu

simu: 
	$(VIEW) $(VCD) conexionfinal.gtkw

#vvp runtime will generate VCD dump output
run:
	$(VVP) $(EXE) 

#Verilog simulation
com:
	$(C) -o $(EXE) $(OBJS)

#RTL synthesis
synth:
	$(YS) $(FSYNTH)  > synthesis.log
	sed 's/PCIE_trans/PCIE_trans_synth/g' synth.v > synth.txt
	cp synth.txt PCIE_trans_synth.v
	rm synth.txt
	rm synth.v

#delete generated files
clean:
	rm -f -R *.o *.vcd *.txt *.log

#delete all generated files
cleanall:
	rm -f -R *.o *.vcd *.txt *.log PCIE_trans_synth.v
