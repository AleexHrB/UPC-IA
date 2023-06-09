(define (problem ext1_domain) (:domain ext1_domain)
(:objects 
    kayand - programador_tres
    jordimongol - programador_dos
    bob - programador_uno
    t - tarea
    t2 - tarea
    t3 - tarea
    t4 - tarea
    t5 - tarea
    t6 - tarea
)

(:init
    (es_tarea_asignada t4 t)
    (es_tarea_asignada t5 t2)
    (es_tarea_asignada t6 t3)
    (es_tipo_tres t)

)

(:goal (forall (?t - tarea) (asignada ?t)))

)
