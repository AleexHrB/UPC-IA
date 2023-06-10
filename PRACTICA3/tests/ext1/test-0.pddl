(define (problem ext1) (:domain ext1)
(:objects
tarea0 - tarea
tarea1 - tarea

programador0 - programador_tres
programador1 - programador_tres
programador2 - programador_dos
programador3 - programador_uno
programador4 - programador_dos
programador5 - programador_uno
programador6 - programador_dos
programador7 - programador_tres
programador8 - programador_dos
programador9 - programador_tres
programador10 - programador_tres
programador11 - programador_uno
programador12 - programador_tres
programador13 - programador_dos

)

(:init
(es_tipo_dos tarea0)
(es_tipo_dos tarea1)
(es_tarea_asignada tarea1 tarea0)
(es_tarea_adicional tarea 1)

)

(:goal (forall (?t - tarea) (asignada ?t))))
