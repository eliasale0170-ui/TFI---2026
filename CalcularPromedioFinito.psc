Algoritmo CalcularPromedioFinito
    Definir suma, numeroIngresado, promedio Como Real
    Definir contador Como Entero
    
    suma <- 0
    contador <- 0
    numeroIngresado <- 0 
    
    Escribir "--- Cálculo de Promedio (Máximo 10 números) ---"
    Escribir "Ingrese números positivos. Para finalizar antes, ingrese un número negativo."
    Escribir "------------------------------------------------"
    
    Mientras numeroIngresado >= 0 Y contador < 10 Hacer
        Escribir "Ingrese el numero ", (contador + 1), ":"
        Leer numeroIngresado
        
        Si numeroIngresado >= 0 Entonces
            suma <- suma + numeroIngresado
            contador <- contador + 1
        FinSi
    FinMientras
    
    Si contador > 0 Entonces
        promedio <- suma / contador
        Escribir "--- Resultado Final ---"
        Escribir "Cantidad de números válidos ingresados: ", contador
        Escribir "El promedio de los números es: ", promedio
    Sino
        Escribir "No se ingresaron números válidos para calcular un promedio."
    FinSi
FinAlgoritmo