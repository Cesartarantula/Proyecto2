all:	testbench.v
	yosys yosys.ys
	sed -i 's/fifo/fifoSynth/g' fifoSynth.v
	sed -i 's/dual_port_memory/dual_port_memory_Synth/g' fifoSynth.v
	iverilog testbench.v
	vvp a.out
	gtkwave fifo.vcd fifo.gtkw

clean:
	rm synth.v *.vcd 