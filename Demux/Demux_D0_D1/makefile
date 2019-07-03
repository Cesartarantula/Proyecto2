default:
	yosys sintesis.ys > sintesis.log
	sed -i 's/Demux_D0_D1/Demux_D0_D1_Estructural/g' Demux_D0_D1_Estructural.v
	iverilog -o a.out Demux_D0_D1_BancoDePruebas.v
	vvp a.out
	gtkwave Demux_D0_D1.vcd config.gtkw
clean:
	rm -f Demux_D0_D1_Estructural.v  rtlil.v *.vcd *.dot *.dot.pid *.out
