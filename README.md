# Staffing

Este es un planificador de turnos, que toma los datos de unos archivos de Excel y devuelve un CSV con los turnos semanales de cada trabajador.


Descripción del problema

Supongamos  que tenemos un centro de monitore que debe funcionar las 24 horas del día, y que tenemos una cantidad mínima de trabajadores necesarios, 56, para hacerlo funcionar en cada 8 horas (lunes de 0 a 8, lunes de 8 a 16, ... domingo de 16 a 24, domingo de 18 a 24). Tenemos que crear un programa de turnos que esté sujeto a ciertas restricciones.

En este caso, las restricciones añadidas son:

Tenemos cada monitorista y su disponibilidad semanal (todos están siempre disponibles) en un fichero Excel, junto con su "nivel de habilidad" (de 1 a 100).
Cada trabajador tiene que tener un descanso de 16 horas al día.
Cada trabajador tiene que tener un descanso de  horas a la semana.
Cada trabajador tiene que trabajar como máximo 12 horas por día.
Los días de trabajo están separados en seis turnos de 4 horas (0-4, 4-8, 8-12, 12-16, 16-20, 20-24).
Un trabajador con un nivel de habilidad < 25 no puede quedarse solo.

