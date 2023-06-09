(define (problem plan) (:domain plan)


(:objects 
    bob - programador_uno
    pajero - programador_uno
    mamasita - programador_dos
    kayand -  programador_tres
    jordimongol - programador_tres
    t - tarea
    tt - tarea 
    ttt - tarea
    tttt - tarea
    ttttt - tarea
    t1 - tarea
    t2 - tarea
    t3 - tarea
    t4 - tarea
    t5 - tarea
    t6 - tarea
)

(:init
    (es_tipo_tres t)
    (es_tipo_tres tt)
)

(:goal (forall (?t - tarea) (asignada ?t)))

)