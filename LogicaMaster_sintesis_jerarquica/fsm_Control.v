//IE-0523 Circuitos Digitales II
//Proyecto2. Bloque Finite State Machine (FSM).
//Elaborado por: César Valverde Zuñiga	A86605		
//I Ciclo 2019

// Este módulo genera los estados de control del dispositivo 
// a partir de un estado inicial conocido, utilizando señales de 
// referencia para las funciones del próximo estado.

module fsmControl  ( input clk,
              input reset_L,
              input init,
              input [1:0] Umbral_MF, 	//(Almost_empty=1) (Almost_full=3) //Viene del Flow Control_MF
	      input [3:0] Umbral_VC0,	//(Almost_empty=4) (Almost_full=12) //Viene del Flow Control_VC0
              input [3:0] Umbral_VC1, 	
	      input [1:0] Umbral_D0, 	//Viene del Flow Control_D0
              input [1:0] Umbral_D1, 	
              input [4:0] FIFO_error, 	//FIFO Full (MF,VCO,VC1,D0,D1) Orden de los bits //Flow Control escribe en estos registros
              input [4:0] FIFO_empty, 	//FIFO Empty //Flow Control escribe en estos registros
              output reg [13:0] Umbrales_I,	//Esta salida es de 14 bits? (MF,VCO,VC1,D0,D1)= bits(2,4,4,2,2)
              output reg active_out,
              output reg idle_out,
              output reg error_out);

  //Parámetros del Case
  parameter RESET = 5'b00001;
  parameter INIT = 5'b00010;
  parameter IDLE = 5'b0100;
  parameter ACTIVE = 5'b01000;
  parameter ERROR = 5'b10000;

  //Registros Internos
  //reg [1:0] nxt_umbral_MF, nxt_umbral_D0, nxt_umbral_D1;
  reg [3:0] nxt_umbral_VC0, nxt_umbral_VC1;
  reg [4:0] state, nxt_state;

  //Reset de salidas y demás señales
  //Asignación de estado inicial.
  //Lógica de estados.
  always @ ( posedge clk ) begin
    if (~reset_L) begin
      //Estado Inicial 
      state <= RESET;
      //nxt_state <= INIT;
      active_out<=0;
      idle_out<=0;
      error_out<=0;
      Umbrales_I<=0;
    end
    else if (init) begin
          state <= INIT;
	  nxt_state <= IDLE;
    end
    else begin
      state <= nxt_state;
    end

    case(state)
      RESET: begin
	nxt_state <=INIT;
        //Salidas
      	Umbrales_I <= 0;
      	active_out <= 0;
      	idle_out <= 0;
      	error_out <= 0;
      end

      INIT: begin
	idle_out <= 0;
      	active_out <= 0;
	error_out <= 0;
        Umbrales_I <= {Umbral_MF,Umbral_VC0,Umbral_VC1,Umbral_D0,Umbral_D1};
        if (FIFO_error!=0)begin
          nxt_state <= ERROR;
        end
	else begin
          nxt_state <= IDLE;
        end
      end

      IDLE: begin
	//idle_out <= 1;
      	active_out <= 0;
	if (FIFO_error!=0) begin
            idle_out <= 0;
            nxt_state <= ERROR;
	    end else if (FIFO_empty==0) begin
            	idle_out <= 1;
            	nxt_state <= IDLE;
                end else if (FIFO_empty!=0)begin
			nxt_state <= ACTIVE;
        	end
      end

      ACTIVE: begin
      	idle_out <= 0;
      	active_out <= 1;
      	if (FIFO_error!=0)begin
	  active_out <= 0;
          nxt_state <= ERROR;
      	  end else if (FIFO_empty==0)begin
          	active_out <= 0;
	  	nxt_state <= IDLE;
      	  end
    end

    ERROR: begin
	idle_out <= 0;
      	active_out <= 0;
	nxt_state <= ERROR;
	if (FIFO_error!=0) begin
		nxt_state <= ERROR;
        	error_out<=1;
	        end else if (~reset_L) begin
        		nxt_state <= RESET;
      			end else begin
				nxt_state <= ERROR;
			end
    end

    default:
      nxt_state <= RESET;
    endcase
end
endmodule
