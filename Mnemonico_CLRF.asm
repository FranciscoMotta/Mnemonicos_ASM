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

;***************** USO DE LA MNEMONICO CLRF F, A  ****************************
;El empleo de este mnemonico es bastante simple pues realiza la operacion de limpiar un registro completo
; Podemos describir la función de la siguiente manera:
; MOVLW 0X00
; MOVWF Registro, A
;********** EJEMPLO ****************
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
    CLRF TRISD ; Movemos el dato 0x00 hacia el registro TRISD para poner como salida a puerto D
    GOTO START ; Vamos a la direccion con el alias de START 
START:
    MOVLW .20; Movemos un dato literal decimal al registro W
    MOVWF 0X15; Movemos el dato de W a la posicion 0x15 de la SRAM
    MOVLW .45; Movemos un dato literal decimal al registro W
    ADDWF 0X15, W; Sumamos el dato de la pos 0x15 con el registro W y se guarda en W 
    MOVWF LATD; Movemos el dato de W hacía el registro W
    CLRF LATD; Limpiamos el dato que estaba en W, es decir;
    ;Hasa el punto antes del mnemonico CLRF LATD,
    ;Dicho registro tiene un valor de 65, pues se vino haciendo una suma con el mnemonico ADDWF 
    ;Llegado a la donde se aplica el CLRF LATD y se borrar el valor de LATD 
    ;En otras palabras: LATD = 0X00
    MOVWF LATD ; Mostramos el dato por el puerto D
    GOTO START; Retornamos a la direccion de memoria con el nombre START
INT_ALTA_PRIOR:
    RETFIE 
    ORG 0X0F0
INT_BAJA_PRIOR:
    RETFIE 
    END 


