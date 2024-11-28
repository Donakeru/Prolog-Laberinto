# Solución laberintos Python & Prolog

Este repositorio contiene una integracion de Prolog en Python donde se realizó un codigo capaz de identificar si un laberinto es solucionable o no.

## Participantes
- Luis Miguel Viuche Madroñero (20212020082)
- Daniel Alejandro Chavez Bustos (20212020109)
- Dilan Stive Arboleda Zambrano (20212020105)


## Características

Se expresa un laberinto de forma matricial donde el 0 va representar una celda transitable y un 1 una celda no transitable o un "muro", toda la logica de la evaluación del laberinto se hace dentro del codigo prolog, adicionalmente el ingreso del laberinto de forma matricial y los dos posibles resultados se manejan directamente en el documeto main de python

## Requisitos

### Software
- **Python 3.9+**
- **SWI-Prolog**
- Bibliotecas de Python:
  - `fastapi`
  - `pyswip`

### Instalación de Dependencias
Ejecuta el siguiente comando para instalar las dependencias necesarias:
```bash
pip install pyswip 
```


## Configuracion

1. Asegúrate de tener SWI-Prolog instalado y configurado en tu sistema.
2. Coloca el archivo logica_laberinto.pl en el mismo directorio que el archivo main.py.
3. Ejecuta la aplicación utilizando el siguiente comando:

```bash
python main.py

```







