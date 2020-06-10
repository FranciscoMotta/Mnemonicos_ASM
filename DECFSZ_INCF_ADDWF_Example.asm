  #INCLUDE <P18F4550.INC>
; CONFIG1L
  CONFIG  PLLDIV = 1            ; PLL Prescaler Selection bits (No prescale (4 MHz oscillator input drives PLL directly))
  CONFIG  CPUDIV = OSC1_PLL2    ; System Clock Postscaler Selection bits ([Primary Oscillator Src: /1][96 MHz PLL Src: /2])
  CONFIG  USBDIV = 1            ; USB Clock Selection bit (used in Full-Speed USB mode only; UCFG:FSEN = 1) (USB clock source comes directly from the primary oscillator block with no postscale)

; CONFIG1H
  CONFIG  FOSC = HS             ; Oscillator Selection bits (HS oscillator (HS))
  CONFIG  FCMEN = OFF           ; Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor disabled)
  CONFIG  IESO = OFF            ; Internal/External Oscillator Switchover bit (Oscillator Switchover mode disabled)

; CONFIG2L
  CONFIG  PWRT = OFF            ; Power-up Timer Enable bit (PWRT disabled)
  CONFIG  BOR = ON              ; Brown-out Reset Enable bits (Brown-out Reset enabled in hardware only (SBOREN is disabled))
  CONFIG  BORV = 3              ; Brown-out Reset Voltage bits (Minimum setting 2.05V)
  CONFIG  VREGEN = OFF          ; USB Voltage Regulator Enable bit (USB voltage regulator disabled)

; CONFIG2H
  CONFIG  WDT = OFF             ; Watchdog Timer Enable bit (WDT disabled (control is placed on the SWDTEN bit))
  CONFIG  WDTPS = 32768         ; Watchdog Timer Postscale Select bits (1:32768)

; CONFIG3H
  CONFIG  CCP2MX = OFF          ; CCP2 MUX bit (CCP2 input/output is multiplexed with RB3)
  CONFIG  PBADEN = OFF          ; PORTB A/D Enable bit (PORTB<4:0> pins are configured as digital I/O on Reset)
  CONFIG  LPT1OSC = OFF         ; Low-Power Timer 1 Oscillator Enable bit (Timer1 configured for higher power operation)
  CONFIG  MCLRE = ON            ; MCLR Pin Enable bit (MCLR pin enabled; RE3 input pin disabled)

;***************** EJERCICIO CON DECFSZ F, D Y EL INCF F, D ****************************
;El presente ejercicio busca aplicar los conceptos aprendidos con anterioridad para el manejo 
; de los mnemonicos INCF F y el mnemonicos DECFSZ F, D para poder ser aplicado en un ejercicio muy simple y
; divertido. EL ejercicio consta de la introducción de una variable para ser comprada y decrementada hasta
; que sea 0, llegado a ese punto si inicialmenta la variable valía 5, se deberá sumar en 1 unidad para empezar
; de nuevo con todo el proceso de decrementación y comparación
;********** RESOLUCIÓN ****************
    CBLOCK 0x00
	variablePrueba; Mantenemos nuestra variable para las pruebas 
	varSuma ;Creamos una variable de suma
    ENDC 
    
    ORG 0X000
    GOTO MAIN
    ORG 0X008
    GOTO INT_ALTA_PRIOR 
    ORG 0X018
    GOTO INT_BAJA_PRIOR 
    ORG 0X020
MAIN:
    CLRF TRISD ; Movemos el dato 0x00 en TRISD haciendo que sea salida
    CLRF varSuma; Limpiamos el valor inicial de varSuma
START: ; Posición en la memoria de programa con el alias START
    MOVLW .3;Movemos un dato literal decimal hace W
    ADDWF varSuma, F; sumamos el valor de W con el dato de varSuma y se guarda en ella misma
COMPAR:
    DECFSZ varSuma, F;Decrementamos el valor inicial de varSuma hasta que sea 0 y lo guardamos en ella
    GOTO NOT_ZERO;De no ser 0 vamos a la posición de memoria de programa con el alias de NOT_ZERO
    GOTO ZERO; De ser 0 vamos a la posicion de memoria de programa con el alias de ZERO
NOT_ZERO: 
    CLRF LATD ; De no ser 0 mantenemos el puerto D en valor lógico 0x00
    GOTO COMPAR;Regresamos a la comparación con el decremento
ZERO:
    SETF LATD ; De ser 0 ponemos el puerto en 0XFF a el puerto D
    INCF varSuma; Sumamos en 1 a varSuma para que la siguiente comparación
    ;sea con el valor inicial + 1
    GOTO START; regresamos a la posición de memoria con el ALIAS START para cargar el dato de nuevo y volver a realizar la comparación
MOSTRAR:; Posición de memoria de programa con el alias MOSTRAR 
    MOVWF LATD; Movemos a LATD el dato cargado en las posiciones de memoria NO_ES_CERO y ES_CERO
    GOTO COMPAR; Regresamos a decremetar el registro
    ORG 0x0C0
INT_ALTA_PRIOR:
    RETFIE 
    ORG 0X0F0
INT_BAJA_PRIOR:
    RETFIE 
    END 


