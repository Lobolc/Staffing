# Staffing 

Este es un planificador de turnos, que toma los datos de unos archivos de Excel y devuelve un CSV con los turnos semanales de cada trabajador.


Descripción del problema

Supongamos  que tenemos un centro de monitoreo que debe funcionar las 24 horas del día, y que tenemos una cantidad mínima de trabajadores necesarios, en nuestro caso son 47 agentes, para hacerlo funcionar en cada 8 horas (lunes de 7:00 a 15:00, lunes de 15:00 a 23:00, ..., domingo de 23:00 a 07:00). Tenemos que crear un programa de turnos que esté sujeto a ciertas restricciones.

En este caso, las restricciones añadidas son:

$\bullet$ Tenemos cada monitorista y su disponibilidad semanal (todos están siempre disponibles) en un fichero Excel, junto con su "score de productividad" (de 1 a 100).

$\bullet$ El horario considerado como de noche es el correspondiente a 23:00-07:00.

$\bullet$ Cada monitorista deberá tener un descanso de 1 día a la semana.

$\bullet$ Cada monitorista deberá trabajar como máximo 8 horas por día.

$\bullet$ Los días de trabajo están separados en tres turnos de 8 horas (07:00-15:00, 15:00-23:00, 23:00-07:00).

$\bullet$ Dado que un monitorista ya trabajó un turno, no puede trabajar los dos siguientes turnos subsecuentes.

$\bullet$ Todos los monitoristas tienen la misma probabilidad de descansar los fines de semana. 

$\bullet$ Los monitoristas tendrán dos turnos en la mañana (07:00-15:00), dos turnos en la tarde (15:00-23:00) y dos turnos en la noche (23:00-07:00).



