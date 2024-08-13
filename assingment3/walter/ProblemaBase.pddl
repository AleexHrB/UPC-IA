(define (problem plan) (:domain plan)

(:objects 
    bob - programadorH1
    pajero - programadorH1
    mamasita - programadorH2
    kayand -  programadorH3
    jordimongol - programadorH3
    t1 - tarea
    t2 - tarea
    t3 - tarea
    t4 - tarea
    t5 - tarea
    t6 - tarea
)

(:init
    (es_tipo_tres t1)
    (es_tipo_tres t2)
)

(:goal (forall (?t - tarea) (asignada ?t)))

)