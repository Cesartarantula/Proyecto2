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
              input [1:0] umbral_MF, 	//(Almost_empty=1) (Almost_full=3) //Viene del Flow Control_MF
	      input [3:0] umbral_VC0,	//(Almost_empty=4) (Almost_full=12) //Viene del Flow Control_VC0
              input [3:0] umbral_VC1, 	
	      input [1:0] umbral_D0, 	//Viene del Flow Control_D0
              input [1:0] umbral_D1, 	
              input [4:0] FIFO_error, 	//FIFO Full (MF,VCO,VC1,D0,D1) Orden de los bits
              input [4:0] FIFO_empty, 	//FIFO Empty 
              output reg [13:0] umbrales_I,	//Esta salida es de 14 bits? (MF,VCO,VC1,D0,D1)= bits(2,4,4,2,2)
              output reg active_out,
              output reg idle_out,
              output reg error_out);

  //Parámetros del Case
  parameter RESET = 5'b00001;
  parameter INIT = 5'b00010;
  parameter IDLE = 5'b00100;
  parameter ACTIVE = 5'b01000;
  parameter ERROR = 5'b10000;

  //Registros Internos
  reg [1:0] nxt_umbral_MF, nxt_umbral_D0, nxt_umbral_D1;
  reg [3:0] nxt_umbral_VC0, nxt_umbral_VC1;
  reg [4:0] state, nxt_state;
  reg [13:0] nxt_umbrales;

  //Reset de salidas y demás señales
  //Asignación de estado inicial.
  //Lógica de estados.
  always @ ( posedge clk ) begin
    if (~reset) begin
      //Estado Inicial 
      state <= RESET;
      //Salidas
      umbrales_I <= 0;
      active_out <= 0;
      idle_out <= 0;
      error_out <= 0;
      //Registros Internos
      nxt_umbral_MF<=0;
      nxt_umbral_VC0<=0;
      nxt_umbral_VC1<=0;
      nxt_umbral_D0<=0;
      nxt_umbral_D1<=0;
    end
    else if (init) begin
          state <= INIT;
          //nxt_state <= INIT;
    end
    else begin
      state <= nxt_state;
      umbrales_I <= nxt_umbrales;
    end
    
    case(state)
      RESET: begin
	nxt_state <=INIT;
        if (init) begin 
          nxt_state <= INIT;
        end
      end

      INIT: begin
        //nxt_umbrales <= {nxt_umbral_MF,nxt_umbral_VC0,nxt_umbral_VC1,nxt_umbral_D0,nxt_umbral_D1};
        umbrales_I <= nxt_umbrales;
        if (FIFO_error!=0)begin
          nxt_state <= ERROR;
        end
	else if (FIFO_empty!=0)begin
          nxt_state <= ERROR;
        end
        else begin
          nxt_state <= IDLE;
        end
      end

      IDLE: begin
        //umbrales_VCFC = umbral_VCFC;
        if (FIFO_error!=0)begin
          nxt_state <= ERROR;
        end
	else if (FIFO_empty!=0)begin
          nxt_state <= ERROR;
        end
        else begin
          idle_out <= 1;
          if (FIFO_empty==0) begin
            idle_out <= 0;
            nxt_state <= ACTIVE;
          end
        end
      end

    ACTIVE: begin
      //umbrales_VCFC = umbral_VCFC;
      idle_out <= 0;
      active_out <= 1;
      if (FIFO_error!=0)begin
          nxt_state <= ERROR;
        end
	else if (FIFO_empty!=0)begin
          nxt_state <= ERROR;
        end
    end

    ERROR: begin
      error_out <= 1;
      active_out <= 0;
      idle_out <= 0;
      if (~reset) begin
        nxt_state = RESET;
      end
    end
    default:
      nxt_state = RESET;
    endcase
end

endmodule
