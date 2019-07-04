all:	testbench.v
	yosys yosys.ys > sintesis.log
	sed -i 's/PCIE_trans/PCIE_Synth/g' PCIE_Synth.v
	iverilog testbench.v
	vvp a.out
	gtkwave PCIE_trans.vcd PCIE_trans.gtkw

clean:
	rm synth.v *.vcd 
