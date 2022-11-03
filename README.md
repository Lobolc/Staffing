# Staffing 

Este es un planificador de turnos, que toma los datos de unos archivos de Excel y devuelve un CSV con los turnos semanales de cada trabajador.


Descripción del problema

Supongamos  que tenemos un centro de monitoreo que debe funcionar las 24 horas del día, y que tenemos una cantidad mínima de trabajadores necesarios, en nuestro caso son 52 monitoristas y 4 jefes de turno, para hacerlo funcionar en cada 9 horas (lunes de 7:00 a 16:00, lunes de 13:00 a 22:00, ..., domingo de 22:00 a 07:00). Tenemos que crear un programa de turnos que esté sujeto a ciertas restricciones.

En este caso, las restricciones añadidas son:

$\bullet$ Tenemos cada monitorista y su disponibilidad semanal (todos están siempre disponibles) en un fichero Excel, junto con su "score de productividad" (de 1 a 100).

$\bullet$ Los días de trabajo están separados en tres turnos de 9 horas (07:00-16:00, 16:00-22:00, 22:00-07:00).

$\bullet$ Cada monitorista deberá trabajar como máximo 9 horas por día.

$\bullet$ El horario considerado como de mañana es el correspondiente a 07:00-16:00.

$\bullet$ El horario considerado como de tarde es el correspondiente a 13:00-22:00.

$\bullet$ El horario considerado como de noche es el correspondiente a 22:00-07:00.

$\bullet$ La distribución de monitoristas está dada de la siguiente manera: 15 monitoristas  y un jefe de turno en la mañana, 15 monitoristas y un jefe de turno en la tarde, y 14 monitoristas y un jefe de turno en la noche. 

$\bullet$ A cada monitorista se le asignará de manera aleatoria una operación, dicha operación no deberá ser asignada al mismo monitorista de manera consecutiva.

$\bullet$ Cada monitorista deberá tener un descanso de 1 día a la semana.

$\bullet$ Los monitoristas tendrán dos turnos en la mañana (07:00-16:00), dos turnos en la tarde (13:00-22:00) y dos turnos en la noche (22:00-07:00). La regla anterior se sustituye por la siguiente: dado que a un monitorista se le ha asignado un turno, deberá permanecer en dicho turno durante toda una semana.

$\bullet$ Todos los monitoristas tienen la misma probabilidad de descansar los fines de semana. 



