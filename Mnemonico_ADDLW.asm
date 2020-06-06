; DIRECTIVA ADDLW 
    ;LA APLICACIÓN Y EL ENTENDIMIENTO DE ESTA DIRECTIVA ES MUY SIMPLE Y SIMILAR A LA DIRECTIVA ANTERIOR ADDWF F, D, A
    ;LA DIFERENCIA CON LA SENTENCIA ANTERIOR ES QUE, EN VEZ DE SUMAR CON UN FILE, SE VA A SUMAR CON UN VALOR
    ;LITERAL PUESTO DE MANERA PREDETERMINADA 
    
    CBLOCK 0x00	
	auxiliar  
    ENDC
    ORG 0X0000; Definimos el vector 0x0000 como la funcion principal
    GOTO MAIN; Asignamos el alías a la dirección anterior 
    ORG 0X0020 ; Elegimos el vector 0x0020 como la pos de la rutina principal
    
MAIN:; damos el alías de la rutina principal
    MOVLW .20; Movemos el dato literal 20 hacia el registro W de trabajo
    ADDLW .10; sumamos el valor de W con el dato literal 10 y se guarda en W
    ; Acá podemos aplicar otra diferencia es es porque el valor de la suma 
    ;No se puede guardar en F, debido a al poner F se supondría que debe guardar 
    ;En la variable parte de la suma, pero en este caso, ese lugar lo toma un 
    ;dalo literal y por ende, se guardaría en el registro W.
    MOVWF auxiliar; Movemos el valor de W hacía la variable auxiliar 
    END 
