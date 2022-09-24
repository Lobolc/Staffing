# Staff planning

Este es un planificador de turnos, que toma los datos de unos archivos de Excel y devuelve un CSV con los turnos semanales de cada trabajador.


Descripción del problema

Supongamos  que tenemos un centro de monitoreo que debe funcionar las 24 horas del día, y que tenemos una cantidad mínima de trabajadores necesarios, 56, para hacerlo funcionar en cada 8 horas (lunes de 0 a 8, lunes de 8 a 16, ..., domingo de 16 a 24). Tenemos que crear un programa de turnos que esté sujeto a ciertas restricciones.

En este caso, las restricciones añadidas son:

$\bullet$ Tenemos cada monitorista y su disponibilidad semanal (todos están siempre disponibles) en un fichero Excel, junto con su "score de productividad" (de 1 a 100).

$\bullet$ El horario considerado como de noche es el correspondiente a 0-8.

$\bullet$ Cada monitorista deberá tener un descanso de 2 días a la semana.

$\bullet$ Cada monitorista deberá trabajar como máximo 8 horas por día.

$\bullet$ Los días de trabajo están separados en tres turnos de 8 horas (0-8, 8-16, 16-24).

$\bullet$ Un monitorista con un score de productividad < 25 no puede quedarse solo.

$\bullet$ Un monitorista con un score de productividad > 90 no puede trabajar los fines de semana.

$\bullet$ Los monitoristas tendrán tres turnos durante el día y dos turnos durante la noche.

$\bullet$ Los turnos no podrán ser consecutivos.

