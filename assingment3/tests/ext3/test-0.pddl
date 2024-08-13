(define (problem ext3) (:domain ext3)
(:objects
tarea0 - tarea
tarea1 - tarea
tarea2 - tarea
tarea3 - tarea

programador0 - programador_uno
programador1 - programador_tres

)

(:init
(es_tarea_asignada tarea2 tarea0)
(es_tarea_adicional tarea2)
(= (hora-ass tarea0)3)
(= (hora-ass tarea2)0)
(es_tarea_asignada tarea3 tarea1)
(es_tarea_adicional tarea3)
(= (hora-ass tarea1)57)
(= (hora-ass tarea3)0)
(= (tareas-ass programador0) 0)
(es_calidad_dos programador1)
(= (tareas-ass programador1) 0)
(= (total-horas) 0)

)

(:goal (forall (?t - tarea) (asignada ?t)))

(:metric minimize (total-horas))
)
