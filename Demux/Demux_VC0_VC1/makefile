default:
	yosys sintesis.ys > sintesis.log
	sed -i 's/demux/demuxEstructural/g' demuxEstructural.v
	iverilog demux_BancoDePruebas.v
	vvp a.out
	gtkwave demux.vcd config.gtkw
clean:
	rm -f demuxEstructural.v  rtlil.v *.vcd *.dot *.dot.pid *.out
