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

;***************** MNEMONICO IORWF F, D ******************************
; El presente mnemonico realizará la operación lógica OR entre un registro 
; específico y el registro de trabajo W
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
    CLRF TRISD ; Limpiamos el registro TRISD y lo ponemos como salida
    CLRF varSuma; Limpiamos la variable varSuma para iniciarlo con 0x00
    CLRF LATD; Limpiamos el registro LATD
START:
    MOVLW 0XAA; Movemos el dato literal hexadecimal al registro W
    MOVWF varSuma; Movemos el dato de W hacia la variable varSuma
SUMA:
    MOVLW 0X55; Movemos el dato literal hexadecimal hacia el registro W
    IORWF varSuma, W; Hacemos el OR lógico entre el dato en varSuma y el dato de W
    ; Luego guardamos el resultado en W
    MOVWF LATD;Movemos el dato de W hacia el registro LATD para ser mostrado
    ; RESUMEN
    ; W = 0X55 = 0101 0101
    ; varSuma = W = 0x55 = 0101 0101
    ; W = 0xAA = 1010 1010
    ; W = W(dato anterior) OR varSuma = 0101 0101 + 1010 1010 = 1111 1111
    ; W = 0xFF = 1111 1111
    ; LATD = W = 0xFF
    GOTO START; volvemos a la posición de memoria con el alías START
    ORG 0X0C0
INT_ALTA_PRIOR:
    RETFIE 
    ORG 0X0F0
INT_BAJA_PRIOR:
    RETFIE 
    END 





