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

;***************** MNEMONICO CPFSEQ F  ****************************
;El mnominico del presente codigo es uno que permite realizar un función muy peculiar en el 
;sentido del flujo del programa pues podrá saltar entre las lineas de codigo dependiendo de que se 
;cumpla o no la condición que propone, pero... ¿Cúal es esa coincidencia?
;Para enterder el mnemonico CPFSEQ es necesario saber que significa. Como sabemos, todo el lenguaje ASSEMBLER 
;proviene del ingles y el mnemonico que estamos empleando "CPFSEQ" es la abreviación de 
;ComPare File Skip if it's Equal to, si sacamos solo las mayusculas, tenemos CPFSEQ.
;Para poder aplicar el presente mnemonico es necesario tener un dato en el registro W y otro en una posición de la SRAM que queramos
;O un valor guardado en una variable como la que tenemos en el CBLOCK, la cual es un banco de memoria destinado para "variables"
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
    ;PASOS DE APLICACION:
    ;1er paso: Mover un dato literal a W
    MOVLW .15; movemos el dato
    MOVWF variablePrueba; Movemos el dato de W hacia variablePrueba
    MOVLW .15; Movemos otro dato a W
    ;EXPLICACIÓN:
    ; movemos un dato a W, entonces W = 15(1)
    ; luego ese dato lo movemos hacia variablePrueba, es decir = variablePrueba = 15
    ;luego movemos un dato literal a W, cuyo valor es el mismo que el anterior dato (1)
    ;en la comparación que está en la linea inferior, se preguntará ¿W = variablePrueba?, de ser igual salta a GOTO IGUAL, sino va a GOTO DIF
    CPFSEQ variablePrueba; Comprobamos si el dato en W es igual al dato en variablePrueba 
    GOTO DIF; Si no son iguales viene a esta linea y va a la dirección de memoria de programa con el alias DIF, esto es una etiqueta 
    GOTO IGUAL; Si los datos comparados son iguales, irá a la dirección de memoria de progrma con el alias IGUAL
DIF: ;Etiqueta para realizar la función correspondiente si los datos de W y variablePrueba son iguales 
    MOVLW .20;Movemos un dato literal decimal hacia W
    GOTO MOSTRAR; Vamos a la dirección de memoria de programa con el alias MOSTRAR 
IGUAL:; Etiqueta para realizar la funcion correspondiente para cuando W y variablePrueba sean iguales 
    MOVLW .15;Movemos el dato literal decimal hacia W
    GOTO MOSTRAR; Vamos a la dirección de memoria de programa con el alias MOSTRAR
MOSTRAR:; Dirección en la memoria de programa para dar servicio a mostrar lo que esté en W
    MOVWF LATD; Movemos el dato que está en W hacía el registro LATD para ser mostrado por el puerto D
    GOTO START; Retornamos a la direccion de memoria con el nombre START
    ORG 0X0C0
INT_ALTA_PRIOR:
    RETFIE 
    ORG 0X0F0
INT_BAJA_PRIOR:
    RETFIE 
    END 


