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

;***************** MNEMONICO INFSNZ F, D  ****************************
;El presente mnemonico es muy parecido al visto anteriormente, es decir, al mnemonico INCFSZ,que lo
; puedes ver en el siguiente enlace; https://github.com/FranciscoMotta/Mnemonicos_ASM/blob/master/Mnemonico_INCFSZ.asm, solo que a diferencia suyo,
; el salto se realiza cuando NO SEA 0. Para entender ello, nos referimos al significado del mnemonico; ICFSNZ => INcrement File Skip if it's Not Zero
; es decir, incrementar el registro, saltar si no es cero.
; EJEMPLO:
;  INFSNZ REGISTRO, F; incrementa en 1 al registro y lo guarda en ella misma
;  GOTO ZERO; Vendrá acá cada que sea 0
;  GOTO NOT_ZERO; Vendrá acá cada que no sea 0 
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
START:
    MOVLW .250; Movemos un dato literal decimal al registro W
    MOVWF varSuma; Movemos el dato hacia varSuma
COMPAR:
    INFSNZ varSuma, F ; Incrementamos a varSuma, la guardamos en ella y veremos si es 0 o no para hacer el salto
    GOTO ZERO; Si es 0 vamos a la posición de memoria con el alias ZERO
    GOTO NOT_ZERO; Si es 0 vamos a la posición de memoria con el alias NOT_ZERO 
ZERO:
    SETF LATD; De ser 0, ponemos en 0xFF al puerto D 
    GOTO START; Regresamos a la posición de memoria con el alias START para iniciar todo de nuevo.
NOT_ZERO:
    CLRF LATD; Si no es 0, limpiaremos todo el puerto D con el valor de 0x00
    GOTO COMPAR; Luego vamos a la posición de memoria con el alias COMPAR para iniciar
    ; la comparación
    ORG 0X0C0
INT_ALTA_PRIOR:
    RETFIE 
    ORG 0X0F0
INT_BAJA_PRIOR:
    RETFIE 
    END 





