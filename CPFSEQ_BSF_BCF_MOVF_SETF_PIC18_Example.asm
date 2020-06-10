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

;***************** EJERCICIO APLICATIVO CPFSEQ, BCF, BSF, SETF, MOVF con el PIC18F4550  ****************************
;Usamos el mnemonico CPFSEQ en un aplicación específica con el PIC18F4550 para poder comparar el valor de sus puertos D y B
;SI estos son iguales se debe prender el LED conectado al RC0 del puerto C, de no serlo, el LED se mantiene apagado
; EXPLICANDO EL BCF y el BSF
; Los mnemonicos anteriores puede poner en 0 o en 1 a un bit en específico de un determinado registro:
; BCF = Bit Clear File = Limpiar Bit de Registro 
; BSF = Bit Set File = Poner en 1 un Bit del Registro 
; El registro puede ser, por ejemplo, TRISD. Como sabemos, el TRISD tiene 8 bits:
; RC0 RC1 RC2 RC3 RC4 RC5 RC6 RC7 
;  0   1   2   3   4   5   6   7
;Ejemplos:
; - Queremos poner en 1 al TRISD el bit 1 
; Entonces el código sería BST TRISD, 1 <- cabe recalcar que el 1 a la derecha coma hace referencia al bit que se desea modificar su estado ne 0 o 1
; - Queremos poner en 0 al TRISD el bit 4
; Entonces el código sería BCT TRISD, 4 <- cabe recalcar que el 4 a la derecha coma hace referencia al bit que se desea modificar su estado ne 0 o 1
; Con el mnemonico MOVF, podemos hacer un manejo de los movimientos de los datos entre los registro correspondientes 
; por ejemplo MOVF PORTD , W -> El valor de PORTD se mueve a W  
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
    ;Con el mnemonico SETF ponemos en 0XFF a todo un registro o variable
    SETF TRISD ;Movemos el dato 0xff hacia el registro TRISD
    SETF TRISB ;Movemos el dato 0xff hacie el registro TRISB
    ;Con el mnemonico BCF o BSF podemos poner en 0 o 1 un bit de un registro específico
    BCF TRISC,0 ; ponemos en 0 al TRIS RC0 para que quede como salida
    GOTO START ; Vamos a la direccion con el alias de START 
START:
    MOVF PORTD, W; Movemos el valor del PUERTO D al registro de trabajo W
    MOVWF variablePrueba; El dato en W lo movemos a variablePrueba
    MOVF PORTB, W; Movemos el valor de PUERTO B al registro W
    CPFSEQ variablePrueba; Comprobamos si el dato en W es igual al dato en variablePrueba 
    GOTO DIF; Si no son iguales viene a esta linea y va a la dirección de memoria de programa con el alias DIF, esto es una etiqueta 
    GOTO IGUAL; Si los datos comparados son iguales, irá a la dirección de memoria de progrma con el alias IGUAL
DIF: ;Etiqueta para realizar la función correspondiente si los datos de W y variablePrueba son iguales 
    BCF LATC, 0;
    GOTO START; Vamos a la dirección de memoria de programa con el alias START 
IGUAL:; Etiqueta para realizar la funcion correspondiente para cuando W y variablePrueba sean iguales 
    BSF LATC, 0;
    GOTO START; Vamos a la dirección de memoria de programa con el alias START
    ORG 0x0C0		
INT_ALTA_PRIOR:
    RETFIE 
    ORG 0X0F0
INT_BAJA_PRIOR:
    RETFIE 
    END 


