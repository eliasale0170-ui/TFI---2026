Algoritmo InteresSimple
    Definir capital, tiempo, tasa, interesCalculado Como Real
    
    tasa <- 0.05
    
    Escribir "--- Cálculo de Interés Simple ---"
    Escribir "La tasa de interés precargada en el sistema es del: ", (tasa * 100), "%"
    Escribir "--------------------------------"
    
    Escribir "Por favor, ingrese el capital inicial:"
    Leer capital
    
    Escribir "Ingrese el tiempo (en el mismo período que la tasa):"
    Leer tiempo
    
    interesCalculado <- capital * tasa * tiempo
    
    Escribir "El interés simple generado es: ", interesCalculado
    Escribir "El monto total final será de: ", (capital + interesCalculado)
FinAlgoritmo