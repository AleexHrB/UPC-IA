(define (problem ext2) (:domain ext2)
(:objects 
    kayand - programador_tres
    mamasita - programador_dos
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
    (= (total-horas) 0)
    (= (hora-tarea t) 5)
    (= (hora-tarea t2) 5)
    (= (hora-tarea t3) 5)
    (es_calidad_dos kayand)
    ;(es_calidad_dos mamasita)
)

(:goal (forall (?t - tarea) (asignada ?t)))

(:metric minimize (total-horas))


)
