all:	testbench.v
	yosys yosys.ys > sintesis.log
	sed -i 's/PCIE_trans/PCIE_Synth/g' PCIE_Synth.v
	sed -i 's/Demux_D0_D1/Demux_D0_D1_Synth/g' PCIE_Synth.v
	sed -i 's/fsmControl/fsmControl_Synth/g' PCIE_Synth.v
	sed -i 's/mux/mux_Synth/g' PCIE_Synth.v
	iverilog testbench.v
	vvp a.out
	gtkwave PCIE_trans.vcd conexionfinal.gtkw

clean:
	rm synth.v *.vcd 
