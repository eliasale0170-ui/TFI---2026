Algoritmo InvertirCadena
    Definir frase, fraseInvertida Como Cadena
    Definir i Como Entero
    
    Escribir "Ingrese una cadena de texto o frase:"
    Leer frase
    
    fraseInvertida <- ""
    
    Para i <- Longitud(frase) Hasta 1 Con Paso -1 Hacer
        fraseInvertida <- fraseInvertida + Subcadena(frase, i, i)
    FinPara
    
    Escribir "La frase invertida es: ", fraseInvertida
FinAlgoritmo