Algoritmo ContadorDeVocales
    Definir frase, fraseMinuscula Como Cadena
    Definir totalVocales, i Como Entero
    Definir letra Como Caracter
    
    Escribir "Por favor, ingrese una palabra o frase:"
    Leer frase

    fraseMinuscula <- Minusculas(frase)
    totalVocales <- 0
    
    Para i <- 1 Hasta Longitud(fraseMinuscula) Con Paso 1 Hacer
        letra <- Subcadena(fraseMinuscula, i, i)
        
        Si letra = "a" O letra = "e" O letra = "i" O letra = "o" O letra = "u" Entonces
            totalVocales <- totalVocales + 1
        FinSi
    FinPara

    Escribir "La cantidad de vocales que contiene es: ", totalVocales
FinAlgoritmo