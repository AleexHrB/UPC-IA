(define (problem base) (:domain base)
(:objects
tarea0 - tarea
tarea1 - tarea
tarea2 - tarea
tarea3 - tarea
tarea4 - tarea
tarea5 - tarea

programador0 - programador_dos
programador1 - programador_uno
programador2 - programador_tres
programador3 - programador_uno
programador4 - programador_dos
programador5 - programador_dos
programador6 - programador_uno
programador7 - programador_dos
programador8 - programador_tres
programador9 - programador_uno
programador10 - programador_dos
programador11 - programador_uno
programador12 - programador_uno
programador13 - programador_dos

)

(:init
(es_tipo_tres tarea0)
(es_tipo_tres tarea3)
(es_tipo_tres tarea2)
(es_tipo_tres tarea5)

)

(:goal (forall (?t - tarea) (asignada ?t))))
