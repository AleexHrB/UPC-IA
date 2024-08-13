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
tarea10 - tarea
tarea11 - tarea
tarea12 - tarea
tarea13 - tarea
tarea14 - tarea
tarea15 - tarea
tarea16 - tarea
tarea17 - tarea
tarea18 - tarea
tarea19 - tarea

programador0 - programador_tres
programador1 - programador_tres
programador2 - programador_dos
programador3 - programador_uno
programador4 - programador_dos
programador5 - programador_uno
programador6 - programador_uno

)

(:init
(es_tipo_tres tarea2)
(es_tipo_tres tarea12)

)

(:goal (forall (?t - tarea) (asignada ?t))))
