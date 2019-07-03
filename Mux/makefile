default:
	yosys sintetizador.ys > sintesis.log
	sed -i 's/mux/muxEstructural/g' muxEstructural.v
	iverilog mux_BancoDePruebas.v
	vvp a.out
	gtkwave mux.vcd config.gtkw
clean:
	rm -f muxEstructural.v  rtlil.v *.vcd *.dot *.dot.pid *.out
