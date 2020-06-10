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

;***************** MNEMONICO CPFSLT con el PIC18F4550  ****************************
;El presente mnemonico usado en ASSEMBLER se emplea para comprobar si el registro apuntado en la aplicación
;del mnemonico es mayor que el registro W, al igual que el mnemonico CPFSEQ, que puedes encontrar
; en: https://github.com/FranciscoMotta/Mnemonicos_ASM/blob/master/Mnemonico_CPFSEQ.asm ,este saltará una linea 
; si la comprobación es verdadera, de no ser el caso bajará en la linea inferior
;Esto se entiende por el significado del mnemonico: CPFSLT -> ComPare File Skit if it's Lower Than
;La idea de esta aplicación de este mnemonico es que sí un dato es menor se moverá un dato a W
;y de no ser menor, se moverá otro dato.
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
START:
    MOVLW .15 ;Movemos un dato literal decimal al registro W
    MOVWF variablePrueba; Luego movemos ese dato hacia variablePrueba
    MOVLW .20; Movemos un dato literal decimal al registro W
    CPFSLT variablePrueba; Luego comprobamos si el dato de variablePrueba es menor que W
    GOTO MAYOR; Si no es mayor vamos a la dirección de memoria de programa con el alias MENOR
    GOTO MENOR; Si es mayor vamos a la dirección de memoria de programa con el alias MAYOR
MAYOR: ;Dirección de memoria de programa con el alias MAYOR
    MOVLW 0XF0;Movemos un dato literal hexadecimal al registro W
    GOTO MOSTRAR; vamos a la dirección de memoria de programa con el alias MOSTRAR
MENOR:; Dirección de memoria de programa con el alias MENOR
    MOVLW 0X0F; Movemos un dato literal hexadecimal al registro W
    GOTO MOSTRAR; Vamos a la dirección de memoria de programa con el alias MOSTRAR 
MOSTRAR:; Dirección de memoria de programa con el alias MOSTRAR
    MOVWF LATD; Movemos el dato de W al registro LATD para ser mostrado.
    GOTO START; Vamos a la dirección de memoria de programa con el alias START
    ORG 0X0C0
INT_ALTA_PRIOR:
    RETFIE 
    ORG 0X0F0
INT_BAJA_PRIOR:
    RETFIE 
    END 


