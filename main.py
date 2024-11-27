from pyswip import Prolog

def to_prolog(laberinto):
    return '[' + ', '.join(map(str, laberinto)) + ']'

# Ejecución principal
if __name__ == "__main__":
    
    laberinto = [
        [0, 0, 0, 1, 0, 0],
        [0, 0, 0, 1, 0, 0],
        [0, 0, 1, 1, 0, 0],
        [0, 0, 1, 0, 0, 0],
        [0, 0, 0, 0, 1, 0],
        [0, 0, 0, 0, 1, 0]
    ]
                
    pl = Prolog()
    pl.consult("logica_laberinto.pl")
    pl_laberinto = to_prolog(laberinto)
    
    query = f"laberinto_solucionable({pl_laberinto})"
    es_solucionable = len(list(pl.query(query))) > 1
    
    print(list(pl.query(query)))
    
    if es_solucionable:
        print("El laberinto creado puede ser solucionado.")
    else:
        print("El laberinto creado **NO** puede ser solucionado.")