# PRÁCTICA2: APP CICLISMO

## Descripción:
Segunda práctica de la uf2 de Swift. App con ciclistas, eventos y equipos.

## Autores:
- Toni Gutiérrez
- Gerard Lloret
- Iván Ríos

## Características:
1. La práctica empieza con un login con la cuenta de Google.
2. Una vez registrado te dirigirá hacia una tabbar con 3 elementos, eventos, equipos y ciclistas.
3. Cada uno de estos elementos tienen una table view enlazada con sus celdas personalizadas.
4. Usamos Realm para realizar la persistencia.
5. Para pasar al detalle de las celdas usamos present.
6. Para salir del detalle de las celdas usamos dismiss.
7. Cuando se cargan las ventanas de la tabla, se comprueba a Realm si hay información, si no la hay se cargan 3 celdas.
8. El detalle de ciclista incluye un botón para borrar la celda.
9. Hemos usado enums para las especialidades de los ciclistas.
