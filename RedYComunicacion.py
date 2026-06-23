
import matplotlib.pyplot as plt
import networkx as nx

def generar_red_nodos():
    # 1. Creación del Grafo Direccionado (DiGraph)
    G = nx.DiGraph()

    # Añadimos los 8 nodos a la estructura (del 1 al 8)
    nodos = list(range(1, 9))
    G.add_nodes_from(nodos)

    # 2. Generación matemática de los enlaces direccionados
    # Recorremos cada nodo para conectarlo simétricamente con exactamente 2 nodos
    for i in range(1, 9):
        # Primer vecino directo (el nodo siguiente: i + 1)
        vecino1 = i + 1 if i + 1 <= 8 else (i + 1) - 8
        # Segundo vecino directo (el nodo subsiguiente: i + 2)
        vecino2 = i + 2 if i + 2 <= 8 else (i + 2) - 8
        
        # Creamos las flechas de comunicación (Origen -> Destino)
        G.add_edge(i, vecino1)
        G.add_edge(i, vecino2)

    # 3. Reporte de control por consola
    print("=========================================================")
    print("  REPORTE DE COMUNICACIÓN DIRECTA POR NODO (GRADO DE SALIDA = 2) ")
    print("=========================================================")
    for nodo in G.nodes():
        salidas_directas = list(G.successors(nodo))
        print(f"El [Nodo {nodo}] tiene comunicación directa con: {salidas_directas}")
    print("=========================================================\n")

    # 4. Configuración de la interfaz gráfica
    plt.figure(figsize=(8, 8))
    plt.title("Visualización de la Red (8 Nodos - Relación Direccionada)", fontsize=13, fontweight='bold')

    # Posicionamos los nodos en un diseño circular para reflejar la simetría
    pos = nx.circular_layout(G)

    # Dibujamos los nodos (círculos)
    nx.draw_networkx_nodes(G, pos, node_size=800, node_color='skyblue', edgecolors='black')

    # Dibujamos las etiquetas numéricas dentro de los nodos
    nx.draw_networkx_labels(G, pos, font_size=11, font_family='sans-serif', font_weight='bold')

    # Dibujamos las flechas con una ligera curvatura (rad=0.15) para evitar superposiciones
    nx.draw_networkx_edges(
        G, pos, 
        arrowstyle='->', 
        arrowsize=18, 
        edge_color='dimgray', 
        width=1.5,
        connectionstyle='arc3,rad=0.15'
    )

    # Ocultamos los ejes del plano para una visualización limpia
    plt.axis('off')

    # Desplegamos el gráfico en pantalla
    print("Desplegando interfaz gráfica de la red...")
    plt.show()

# Ejecución del programa
if __name__ == "__main__":
    generar_red_nodos()