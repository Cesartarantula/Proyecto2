all:	testbench.v
	yosys yosys.ys > sintesis.log
	sed -i 's/fifo/fifoSynth/g' PCIE_Synth.v
	iverilog testbench.v
	vvp a.out
	gtkwave PCIE_trans.vcd PCIE_trans.gtkw

clean:
	rm synth.v *.vcd 