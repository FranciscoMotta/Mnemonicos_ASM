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

;***************** MNEMONICO DECF F, D con el PIC18F4550  ****************************
; Los mnemonicos anteriormente mencionados tienen la particularidad decrementar (DECF) un determinado
; registro, variable u operando para realizar diversas actividades en el manejo del código
; La F a la izquierda de la primera coma hace referencia al registro que se va a decrementar y la D a la izquierda
; de la misma hace referencia en donde se va a guardar el dato decrementado, y puede ser W, para guardarse en el registro W o F para 
; guardarse en el mismo registro decrementado
;********** RESOLUCIÓN ****************
    CBLOCK 0x00
	variablePrueba
    ENDC 
    
    ORG 0X000
    GOTO MAIN
    ORG 0X008
    GOTO INT_ALTA_PRIOR 
    ORG 0X018
    GOTO INT_BAJA_PRIOR
    ORG 0X020
MAIN:
    CLRF TRISD ; Movemos el dato 0x00 en TRISD haciendo que sea salida.
    MOVLW .25; Movemos un dato literal decimal al registro W
    MOVWF variablePrueba; Lo movemos a variablePrueba
START:
    DECF variablePrueba, F ;Decrementamos a variablePrueba y lo guardamos en ella misma  
    MOVF variablePrueba, W; Luego movemos el dato de variablePrueba en W
    MOVWF LATD; Y el dato en W lo llevamos a LATD
    GOTO START; Volvemos a la dirección de memoria de programa con el alias START
INT_ALTA_PRIOR:
    RETFIE 
    ORG 0X0F0
INT_BAJA_PRIOR:
    RETFIE 
    END 





