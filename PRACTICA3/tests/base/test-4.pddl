(define (problem base) (:domain base)
(:objects
tarea0 - tarea
tarea1 - tarea
tarea2 - tarea
tarea3 - tarea
tarea4 - tarea
tarea5 - tarea
tarea6 - tarea
tarea7 - tarea
tarea8 - tarea
tarea9 - tarea

programador0 - programador_tres
programador1 - programador_tres

)

(:init
(es_tipo_tres tarea3)
(es_tipo_tres tarea8)

)

(:goal (forall (?t - tarea) (asignada ?t))))
