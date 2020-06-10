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

;***************** MNEMONICO ICFSZ F, D  ****************************
;El presente mnemonico es muy particular, y de buenas a primeras, parece no tener sentido, debido a que
;incrementa siempre el valor de un determinado registro y saltará si el valor del registro es 0,
;Pero... como llega a ser 0 un registro que siempre se incrementa?
;Para dar con la respuesta, debemos dejar de lado un momento nuestro pensamiento convencional
; y referirnos explicitamente a ver que es lo que pasa en un microcontrolador o en cualquier aparado con
; datos de n bits.
; Supongamos pues que tenemos un registro con un tamaño, como en el caso del pic18, de 8 bits.
; este registro podrá tener valores entre 00000000(base 2) hasta 11111111(2), en otras palabras, 
; tendrá valores entre 0 y 255, pero que pasa si nosotros sumanos el registro 257 veces?
; o que pasaría si cargamos un dato de 11111111 al registro y luego le sumamos 0000001
; para muchos la respuesta es más que obvia, el valor del registro es 00000000, puesto que sufre un desborde del valor máximo
; que este puede tener. Por una parte, podemos analizar si un registro sufre un desborde de diferentes maneras,
; la más sencilla sería usar el bit C del registro STATUS que se activa cuando el MSB de un registro sufre un cambio.
; Pero para fines practicos, el mnemonico INCFSZ, no ayuda con realizar ese análisis de desbordamiento y a su vez
; nos ayuda a realizar otras acciones mientras cumpla o no con la condición de salto.
; La "D" que aparece a la derecha de la coma en el mnemonico hace referencia al lugar en el cual se va a guardar el resultado
; de la suma, esto puede tomar el valor de W, para ser guardado en W, o F para ser guardado en la misma variable
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
START:
    MOVLW .250 ;Movemos un dato literal decimal al registro W
    MOVWF varSuma; Movemos el dato de W hacia la variable varSuma
INCRE:
    INCFSZ varSuma, F; Incrementamos varSuma, la guardamos en ella misma y preguntamos su es 0 o no.
    GOTO NOT_ZERO; De no ser 0, iremos a la posición de memoria con el alias NOT_ZERO
    GOTO ZERO; De ser 0, iremos a la posición de memoria con el alias ZERO
NOT_ZERO:
    CLRF LATD; De no ser 0 mantendremos en LATD en 0
    GOTO INCRE; Y volvemos a la sección de incremento de la variable
ZERO:
    SETF LATD; De ser 0, pondremos en 0xff a todo el registro LATD
    GOTO START; Y volvemos a la sección de START de la memoria de programa 
    ORG 0X0C0
INT_ALTA_PRIOR:
    RETFIE 
    ORG 0X0F0
INT_BAJA_PRIOR:
    RETFIE 
    END 





