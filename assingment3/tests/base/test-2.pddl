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

programador0 - programador_dos
programador1 - programador_dos
programador2 - programador_uno
programador3 - programador_tres
programador4 - programador_dos

)

(:init
(es_tipo_tres tarea0)
(es_tipo_tres tarea5)

)

(:goal (forall (?t - tarea) (asignada ?t))))
