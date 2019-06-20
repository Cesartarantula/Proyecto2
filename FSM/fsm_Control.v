//IE-0523 Circuitos Digitales II
//Proyecto2. Bloque Finite State Machine (FSM).
//Elaborado por: César Valverde Zuñiga	A86605		
//I Ciclo 2019

// Este módulo genera los estados de control del dispositivo 
// a partir de un estado inicial conocido, utilizando señales de 
// referencia para las funciones del próximo estado.

module fsmControl  ( input clk,
              input reset,
              input init,
              input [1:0] umbral_MF,
	      input [1:0] umbral_D,
	      input [3:0] umbral_VC,
              input FIFO_error,
              input FIFO_empty,
              output reg [7:0] umbrales_I,
              output reg active_out,
              output reg idle_out,
              output reg error_out);

  parameter RESET = 5'b00001;
  parameter INIT = 5'b00010;
  parameter IDLE = 5'b00100;
  parameter ACTIVE = 5'b01000;
  parameter ERROR = 5'b10000;

  reg [4:0] state, nxt_state;
  reg [7:0] nxt_umbrales;

 //Reset de señales y asignacion de estado inicial.
  always @ ( posedge clk ) begin
    if (~reset) begin 
      state <= RESET;
    end
    else begin
      state <= nxt_state;
    end
  end
  //Lógica de estados.
  always @ ( * ) begin
    error_out = 0;
    active_out = 0;
    idle_out = 0;
    umbrales_I = 0;
    nxt_state = state;
    //Estados.
    case(state)
      RESET: begin
        if (init)
          nxt_state = INIT;
      end

      INIT: begin
	umbrales_I = {umbral_MF,umbral_VC,umbral_D};
        if (FIFO_error)
          nxt_state = ERROR;
        else
          nxt_state = IDLE;
      end

      IDLE: begin
        umbrales_I = {umbral_MF,umbral_VC,umbral_D};
        if (FIFO_error)
          nxt_state = ERROR;
        else begin
          idle_out = 1;
          if (~FIFO_empty) begin
            idle_out = 0;
            nxt_state = ACTIVE;
          end
        end
      end

    ACTIVE: begin
      umbrales_I = {umbral_MF,umbral_VC,umbral_D};
      idle_out = 0;
      active_out = 1;
      if (FIFO_error) begin
        active_out = 0;
        nxt_state = ERROR;
      end
    end

    ERROR: begin
      error_out = 1;
      if (reset)
        nxt_state = RESET;
    end

    default:
      nxt_state = RESET;
    endcase

  end


endmodule //fsm
