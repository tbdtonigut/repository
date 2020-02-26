# PRACTICA2: APP CICLISMO

## Autores:
- Toni Gutiérrez
- Gerard Lloret
- Iván Ríos

## Descripción:
La práctica empieza con un login con la cuenta de Google.
Una vez registrado te dirigirá hacia una tabbar con 3 elementos, eventos, equipos y ciclistas.
Cada uno de estos elementos tienen una table view enlazada con sus celdas personalizadas.
Usamos Realm para realizar la persistencia.
Para pasar al detalle de las celdas usamos present.
Para salir del detalle de las celdas usamos dismiss
Cuando se cargan las ventanas de la tabla, se comprueba a Realm si hay información, si no la hay se cargan 3 celdas.
El detalle de ciclista incluye un botón para borrar la celda.
Hemos usado enums para las especialidades de los ciclistas
