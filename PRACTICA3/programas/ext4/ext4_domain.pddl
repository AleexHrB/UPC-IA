;Header and description

(define (domain ext4)


(:requirements :strips :adl :fluents)
(:types
    programador tarea - object
    programador_uno programador_dos programador_tres - programador
)

(:functions 
    (total-horas)
    (hora-tarea ?t - tarea)
    (tareas-ass ?p - programador)
    (personas-currando)
    (ponderacion-personas)
    (ponderacion-horas)
)

(:predicates 
    (asignada ?t - tarea)
    (asignada_a ?t - tarea ?p - programador)

    ;t2 es tarea asignada de t?
    (es_tarea_asignada ?t2 - tarea ?t - tarea)
    (es_tipo_tres ?t - tarea)
    (es_calidad_dos ?p-programador)
)

(:action asignada_pr_uno 
    :parameters (?p - programador_uno ?t - tarea ?t2 - tarea)
    :precondition (and (not (es_tipo_tres ?t)) (es_tarea_asignada ?t2 ?t) (not (asignada ?t)) (< (tareas-ass ?p) 2))
    :effect (and (asignada ?t) (asignada ?t2) (asignada_a ?t ?p) (asignada_a ?t2 ?p) 
    (increase (total-horas) (hora-tarea ?t))
    (increase (total-horas) 1)
    (when (= (tareas-ass ?p) 0) (increase (personas-currando) 1))
    (increase (tareas-ass ?p) 2)
    (when (es_calidad_dos ?p) (increase (total-horas) 1)
    )
    )
)

(:action asignada_pr_dos
    :parameters (?p - programador_dos ?t - tarea ?t2 - tarea)
    :precondition (and (es_tarea_asignada ?t2 ?t) (not (asignada ?t)) (< (tareas-ass ?p) 2))
    :effect (and (asignada ?t) (asignada ?t2) (asignada_a ?t ?p) (asignada_a ?t2 ?p) 
    (increase (total-horas) (hora-tarea ?t))
    (increase (total-horas) 1)
    (when (= (tareas-ass ?p) 0) (increase (personas-currando) 1))
    (increase (tareas-ass ?p) 2)
    (when (es_calidad_dos ?p) (increase (total-horas) 1)
    )
    )
)

(:action asignada_pr_tres
    :parameters (?p - programador_tres ?t - tarea ?t2 - tarea)
    :precondition (and (es_tarea_asignada ?t2 ?t) (not (asignada ?t)) (< (tareas-ass ?p) 2))
    :effect (and (asignada ?t) (asignada ?t2) (asignada_a ?t ?p) (asignada_a ?t2 ?p) 
    (increase (total-horas) (hora-tarea ?t))
    (increase (total-horas) 1)
    (when (= (tareas-ass ?p) 0) (increase (personas-currando) 1))
    (increase (tareas-ass ?p) 2)
    (when (es_calidad_dos ?p) (increase (total-horas) 1)
    )
    )
)

)