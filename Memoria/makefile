.PHONY: all simu run com synth clean cleanall

#Objects
OBJS = dut.v
EXE = dut.o
VCD = test.vcd
FSYNTH = synthesizer.ys

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
	$(VIEW) $(VCD) config.gtkw

#vvp runtime will generate VCD dump output
run:
	$(VVP) $(EXE)

#Verilog simulation
com:
	$(C) -o $(EXE) $(OBJS)

#RTL synthesis
synth:
	$(YS) $(FSYNTH)  > synthesis.log
	sed 's/dual_port_memory/dual_port_memory_synth/g' synth.v > synth.txt
	cp synth.txt synth.v
	rm synth.txt

#delete generated files
clean:
	rm -f -R *.o *.vcd *.txt *.log

#delete all generated files
cleanall:
	rm -f -R *.o *.vcd *.txt *.log synth.v
