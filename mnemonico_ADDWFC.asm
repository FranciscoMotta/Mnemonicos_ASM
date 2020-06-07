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

; CONFIG4L
  CONFIG  STVREN = OFF          ; Stack Full/Underflow Reset Enable bit (Stack full/underflow will not cause Reset)
  CONFIG  LVP = OFF             ; Single-Supply ICSP Enable bit (Single-Supply ICSP disabled)
  CONFIG  ICPRT = OFF           ; Dedicated In-Circuit Debug/Programming Port (ICPORT) Enable bit (ICPORT disabled)
  CONFIG  XINST = OFF           ; Extended Instruction Set Enable bit (Instruction set extension and Indexed Addressing mode disabled (Legacy mode))

; CONFIG5L
  CONFIG  CP0 = OFF             ; Code Protection bit (Block 0 (000800-001FFFh) is not code-protected)
  CONFIG  CP1 = OFF             ; Code Protection bit (Block 1 (002000-003FFFh) is not code-protected)
  CONFIG  CP2 = OFF             ; Code Protection bit (Block 2 (004000-005FFFh) is not code-protected)
  CONFIG  CP3 = OFF             ; Code Protection bit (Block 3 (006000-007FFFh) is not code-protected)

; CONFIG5H
  CONFIG  CPB = OFF             ; Boot Block Code Protection bit (Boot block (000000-0007FFh) is not code-protected)
  CONFIG  CPD = OFF             ; Data EEPROM Code Protection bit (Data EEPROM is not code-protected)

; CONFIG6L
  CONFIG  WRT0 = OFF            ; Write Protection bit (Block 0 (000800-001FFFh) is not write-protected)
  CONFIG  WRT1 = OFF            ; Write Protection bit (Block 1 (002000-003FFFh) is not write-protected)
  CONFIG  WRT2 = OFF            ; Write Protection bit (Block 2 (004000-005FFFh) is not write-protected)
  CONFIG  WRT3 = OFF            ; Write Protection bit (Block 3 (006000-007FFFh) is not write-protected)

; CONFIG6H
  CONFIG  WRTC = OFF            ; Configuration Register Write Protection bit (Configuration registers (300000-3000FFh) are not write-protected)
  CONFIG  WRTB = OFF            ; Boot Block Write Protection bit (Boot block (000000-0007FFh) is not write-protected)
  CONFIG  WRTD = OFF            ; Data EEPROM Write Protection bit (Data EEPROM is not write-protected)

; CONFIG7L
  CONFIG  EBTR0 = OFF           ; Table Read Protection bit (Block 0 (000800-001FFFh) is not protected from table reads executed in other blocks)
  CONFIG  EBTR1 = OFF           ; Table Read Protection bit (Block 1 (002000-003FFFh) is not protected from table reads executed in other blocks)
  CONFIG  EBTR2 = OFF           ; Table Read Protection bit (Block 2 (004000-005FFFh) is not protected from table reads executed in other blocks)
  CONFIG  EBTR3 = OFF           ; Table Read Protection bit (Block 3 (006000-007FFFh) is not protected from table reads executed in other blocks)

; CONFIG7H
  CONFIG  EBTRB = OFF           ; Boot Block Table Read Protection bit (Boot block (000000-0007FFh) is not protected from table reads executed in other blocks)
;***************** USO DE LA MNEMONICO ADDWFC F, D, A ****************************
;  El concepto de este mnemonico es el de sumar el valor del registro W, el valor del registro F 
; y el valor del bit "Carry" del registro STATUS 
    CBLOCK 0x00
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
    CLRF LATD; Limpiamos el registro W
    MOVLW .14 ; Movemos el dato literal 14 hacía el registro W
    MOVWF 0X10; Movemos el dato de W hacía la dirección 0X10 de la SRAM 
    MOVLW .255; Movemos el dato literal 254 hacia el registro W
    ADDWF 0X10, F, 0; Sumamos el dato de W con el dato de la dirección 0X10 de la SRAM
    ;ACOTACIONES: 
    ;Hasta este punto tendríamos esto:
    ; W = 14 -> pos 0X10 = W -> POS 0X10 = 14 
    ; Luego W = 25
    ; Para finalizar, sumamos los datos, es decir; pos 0X10 + W = 14 + 255 = 269 = 1 0000 1101
    ; Pero es necesario recordar que el dato a guardar no serán los 268, sinó solo los 8 bits LSB
    ; Es decir: pos0x10 = 0000 1101 = 13
    ; Pero... Porque?
    ; Se debe recordad que todos los datos a trabajar deben ser de 8 bits como máximo, y
    ; el resultado de la suma anterior es de 9 bits, por lo que se cogerán solo los 
    ; primeros 8 bits para ser guardados la pos 0x10 designada de la SRAM y el bit MSB
    ; quedará representado con el bit Carry del registro STATUS que se pondrá en 1 al tener un 
    ; bit de acarreo resultado de una suma.
    ; El registro STATUS tiene los siguientes BITS:
    ; Z -> que se activa cuando el resultado de una operación el la ALU da 0 
    ; OV -> Se activa cuando ocurre un desborde en la operación aritmetica
    ; N -> Se activa cuando el resultado es negativo
    ; DC -> Se activa cuando tenemos un carry en los primeros 4 bits del resultado de la ALU
    ; C -> Se activa cuando hay una salida de Carry del MSB del resultado de la ALU
    MOVLW .20 ; Movemos el dato literal hacia el registro W
    ADDWFC 0X10, w; Sumamos el dato de W con el dato de la pos 0x10 de la SRAM más el bit carry y se guarda en W
    ; Acá tendriamos lo siguiente, W = 20, pos 0x10 = 13 y carry = 1 => 34 
    ; W = 34 decimal 
    MOVWF LATD; Movemos el dato de W hacia el registro LATD
    GOTO START; Volvemos la dirección con el alias START 
    ORG 0X0D0
INT_ALTA_PRIOR:
    RETFIE 
    ORG 0X0F0
INT_BAJA_PRIOR:
    RETFIE 
    END 


