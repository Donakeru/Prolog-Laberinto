laberinto_solucionable(Laberinto) :-
    length(Laberinto, Filas),
    nth0(0, Laberinto, PrimeraFila),
    length(PrimeraFila, Columnas),
    FilaFin is Filas - 1,
    ColumnaFin is Columnas - 1,
    camino(Laberinto, (0, 0), (FilaFin, ColumnaFin), []).

% Validacion de un camino que conecta ambas posiciones (inicial y final)
camino(_, (Fila, Columna), (Fila, Columna), _).
camino(Laberinto, (Fila, Columna), Fin, Visitados) :-
    (   (Fila, Columna) = Fin
    ->  true
    ;   celdas_vecinas(Laberinto, (Fila, Columna), (NuevaFila, NuevaColumna)),
        \+ member((NuevaFila, NuevaColumna), Visitados),
        camino(Laberinto, (NuevaFila, NuevaColumna), Fin, [(Fila, Columna) | Visitados])
    ).

% deteccion de celdas de alrededor en direcciones posibles
celdas_vecinas(Laberinto, (Fila, Columna), (NuevaFila, NuevaColumna)) :-
    Direcciones = [(-1, 0), (1, 0), (0, -1), (0, 1)], % Direcciones posibles (Arriba, Abajo, Izquierda, Derecha)
    member((DeltaFila, DeltaColumna), Direcciones),
    NuevaFila is Fila + DeltaFila,
    NuevaColumna is Columna + DeltaColumna,
    celda_transitable(Laberinto, (NuevaFila, NuevaColumna)).

% detectar si la celda a moverse es transitable
celda_transitable(Laberinto, (Fila, Columna)) :-
    validar_posicion(Laberinto, (Fila, Columna)),
    nth0(Fila, Laberinto, FilaContenido),
    nth0(Columna, FilaContenido, 0).

% Valida que la posición esté dentro de los límites del laberinto.
validar_posicion(Laberinto, (Fila, Columna)) :-
    length(Laberinto, Filas),
    nth0(0, Laberinto, PrimeraFila),
    length(PrimeraFila, Columnas),
    Fila >= 0, Fila < Filas,
    Columna >= 0, Columna < Columnas.
