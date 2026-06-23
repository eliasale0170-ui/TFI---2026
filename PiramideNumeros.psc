Algoritmo PiramideNumeros
    Definir altura, piso, elemento, numActual, espacios, k Como Entero
    
    Escribir "Ingrese la altura de la pirámide:"
    Leer altura
    
    numActual <- 1
    
    Para piso <- 1 Hasta altura Con Paso 1 Hacer
        
        Para k <- 1 Hasta (altura - piso) Con Paso 1 Hacer
            Escribir " " Sin Saltar
        FinPara
        
        Para elemento <- 1 Hasta piso Con Paso 1 Hacer
            Escribir numActual, " " Sin Saltar
            numActual <- numActual + 1
        FinPara
		
        Escribir "" 
    FinPara
FinAlgoritmo