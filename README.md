# Staffing

Este es un planificador de turnos, que toma los datos de unos archivos de Excel y devuelve un CSV con los turnos semanales de cada trabajador.


Descripción del problema

Supongamos  que tenemos un centro de monitore que debe funcionar las 24 horas del día, y que tenemos una cantidad mínima de trabajadores necesarios, 56, para hacerlo funcionar en cada 8 horas (lunes de 0 a 8, lunes de 8 a 16, ... domingo de 16 a 24, domingo de 18 a 24). Tenemos que crear un programa de turnos que esté sujeto a ciertas restricciones.

En este caso, las restricciones añadidas son:

$\bullet$ Tenemos cada monitorista y su disponibilidad semanal (todos están siempre disponibles) en un fichero Excel, junto con su "nivel de habilidad" (de 1 a 100).

$\bullet$ Cada trabajador tiene que tener un descanso de 16 horas al día.

$\bullet$ Cada trabajador tiene que tener un descanso de  horas a la semana.

$\bullet$ Cada trabajador tiene que trabajar como máximo 8 horas por día.

$\bullet$ Los días de trabajo están separados en seis turnos de 8 horas (0-8, 8-16, 16-24).

$\bullet$ Un trabajador con un nivel de habilidad < 25 no puede quedarse solo.

