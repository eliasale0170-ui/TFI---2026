Algoritmo AdivinaElNumero
    Definir numeroSecreto, intento, diferencia Como Entero
    
    numeroSecreto <- Azar(25) + 1
    
    Escribir "¡Bienvenido al juego de adivinar!"
    Escribir "He pensado un número entre 1 y 25. Intenta adivinarlo."
	Escribir "Si estas a 3 numeros o menos de distancia, el programa te dira que estas cerca, sino, estas alejado. ;)"
    
    intento <- 0 
    
    Mientras intento <> numeroSecreto Hacer
        Escribir "Ingresa tu número:"
        Leer intento
        
        Si intento = numeroSecreto Entonces
            Escribir "¡Correcto! ¡Felicidades, adivinaste el número!"
        Sino

            diferencia <- Abs(numeroSecreto - intento)
            
            Si diferencia <= 3 Entonces
                Escribir "¡Estás cerca! Inténtalo de nuevo."
            Sino
                Escribir "Estás alejado. ¡Sigue buscando!"
            FinSi
        FinSi
    FinMientras
FinAlgoritmo