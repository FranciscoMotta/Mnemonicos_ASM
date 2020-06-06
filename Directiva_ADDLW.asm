; DIRECTIVA ADDLW 
    ;LA APLICACIÓN Y EL ENTENDIMIENTO DE ESTA DIRECTIVA ES MUY SIMPLE Y SIMILAR A LA DIRECTIVA ANTERIOR ADDWF F, D, A
    ;LA DIFERENCIA CON LA SENTENCIA ANTERIOR ES QUE, EN VEZ DE SUMAR CON UN FILE, SE VA A SUMAR CON UN VALOR
    ;LITERAL PUESTO DE MANERA PREDETERMINADA 
    
CBLOCK
  auxiliar
END 
    ORG 0X0000; Definimos el vector 0x0000 como la funcion principal
    GOTO MAIN; Asignamos el alías a la dirección anterior 
    ORG 0X0008 ; Asignamos el vector de servicio a la interrupcion de alta prior 
    GOTO ALTA_PRIOR ; Damos el alias respectivo
    ORG 0X0018; Asignamos el vector de servicio a la interrupcion de baja prior 
    GOTO BAJA_PRIOR; Damos el alias a dicho vector
    ORG 0X0020 ; Elegimos el vector 0x0020 como la pos de la rutina principal
    
MAIN:; damos el alías de la rutina principal
    MOVLW .20; Movemos el dato literal 20 hacia el registro W de trabajo
    ADDLW .10, W; sumamos el valor de W con el dato literal 10 y se guarda en W
    MOVWF auxiliar; Movemos el valor de W hacía la variable auxiliar 
    END 
