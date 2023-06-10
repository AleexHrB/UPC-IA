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

programador0 - programador_uno
programador1 - programador_tres
programador2 - programador_tres
programador3 - programador_tres
programador4 - programador_uno
programador5 - programador_tres
programador6 - programador_dos

)

(:init
(es_tipo_tres tarea6)
(es_tipo_tres tarea15)
(es_tipo_tres tarea7)
(es_tipo_tres tarea16)
(es_tipo_tres tarea8)
(es_tipo_tres tarea17)

)

(:goal (forall (?t - tarea) (asignada ?t))))
