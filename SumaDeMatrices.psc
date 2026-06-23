Algoritmo SumaDeMatrices
	
    Definir filas, columnas Como Entero
    filas <- 2
    columnas <- 2
    
    Definir matrizA, matrizB, matrizSuma Como Entero
    Dimension matrizA[filas, columnas], matrizB[filas, columnas], matrizSuma[filas, columnas]
    
    Definir f, c Como Entero
    
    Escribir "--- Carga de datos para la Matriz A ---"
    Para f <- 1 Hasta filas Hacer
        Para c <- 1 Hasta columnas Hacer
            Escribir "Ingrese el valor para la posición [", f, ",", c, "]:"
            Leer matrizA[f, c]
        FinPara
    FinPara
    
    Escribir "--- Carga de datos para la Matriz B ---"
    Para f <- 1 Hasta filas Hacer
        Para c <- 1 Hasta columnas Hacer
            Escribir "Ingrese el valor para la posición [", f, ",", c, "]:"
            Leer matrizB[f, c]
        FinPara
    FinPara
    
    Para f <- 1 Hasta filas Hacer
        Para c <- 1 Hasta columnas Hacer
            matrizSuma[f, c] <- matrizA[f, c] + matrizB[f, c]
        FinPara
    FinPara
    
    Escribir "--- La Matriz Resultante de la suma es: ---"
    Para f <- 1 Hasta filas Hacer
        Para c <- 1 Hasta columnas Hacer
            Escribir matrizSuma[f, c], "   " Sin Saltar
        FinPara
        Escribir "" 
    FinPara
FinAlgoritmo