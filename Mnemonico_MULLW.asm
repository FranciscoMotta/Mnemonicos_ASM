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

;*****************MNEMONICO MULLW F , A*********************
;  El presente mnemonico cumple la función de multiplicar el valor de W
; con el valor un determinado
; la diferencia con el ANDLW o el ANDWF es que el resultado puede ser mayor a
; 8 bits y ser almacenamos en 2 registros PRODH y PRODL
; PRODH -> Guarda los 8 bits más significativos 
; PRODL -> Guarda los 8 bits menos significativos 
; Podemos afirmar entonces que el mayor resultado posible es de 65025, 
; debido a que podremos multiplicar 0XFF = 255 X 0XFF = 255 == 65025
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
    CLRF TRISB; Limpiamos el registro TRISB y lo ponemos como salida
START:
    MOVLW .255;Movemos vez el dato literal maximo de 8 bits al registro W
    MULLW .255; Multiplicamos el valor de W con el valor de 255
    MOVFF PRODH, LATD; Los 8 bits MSB se guarda en PRODH y los mostramos en LATD y se muestra
    MOVFF PRODL, LATB; Los 8 bits LSB se guarda en el PRODL y los mostramos en LATB y se muestra
    GOTO START; Regresamos a la posición de memoria de programa con el alias START
    ORG 0X0C0
INT_ALTA_PRIOR:
    RETFIE 
    ORG 0X0F0
INT_BAJA_PRIOR:
    RETFIE 
    END 



