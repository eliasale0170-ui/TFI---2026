Algoritmo TablaMultiplicar
    Definir n, i, resultado Como Entero
    Escribir "Ingrese el numero n para generar su tabla de multiplicar:"
    Leer n
    
    Escribir "--- Tabla del ", n, " (hasta el 20) ---"
    
    Para i <- 1 Hasta 20 Con Paso 1 Hacer
        resultado <- n * i
        Escribir n, " X ", i, " = ", resultado
    FinPara
FinAlgoritmo