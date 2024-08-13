
(define (domain ext3)


(:requirements :strips :adl :fluents)

(:types 
    programador tarea - object
    programador_uno programador_dos programador_tres - programador

)

(:functions
    (total-horas)
    (hora-ass ?t - tarea)
    (tareas-ass ?p - programador)
)


(:predicates 
    (asignada ?t - tarea)
    (es_tarea_prohibida ?t - tarea ?p - programador)
    (es_tarea_adicional ?t - tarea)
    ;t2 es tarea asignada de t?
    (es_tarea_asignada ?t2 - tarea ?t - tarea)
    (es_tipo_tres ?t - tarea)
    (es_tipo_dos ?t - tarea)
    (valida ?t - tarea)

    (es_calidad_dos ?p - programador)

)


(:action asignada_pr_uno 
    :parameters (?p - programador_uno ?t - tarea ?t2 - tarea)
    :precondition (and (not (es_tipo_tres ?t)) (es_tarea_asignada ?t2 ?t) (not (asignada ?t)) (< (tareas-ass ?p) 2))
    :effect (and (asignada ?t) (valida ?t2) (es_tarea_prohibida ?t2 ?p) (increase (total-horas) (hora-ass ?t))
    (increase (total-horas) 1)
    (when (es_calidad_dos ?p) (increase (total-horas) 1))
    (increase (tareas-ass ?p) 1)
    )
    
)

(:action asignada_pr_dos 
    :parameters (?p - programador_dos ?t - tarea ?t2 - tarea)
    :precondition (and (es_tarea_asignada ?t2 ?t) (not (asignada ?t)) (< (tareas-ass ?p) 2))
    :effect (and (asignada ?t) (valida ?t2) (es_tarea_prohibida ?t2 ?p) (es_tipo_dos ?t2) (increase (total-horas) (hora-ass ?t))
    (when (es_tipo_tres ?t) (and (increase (total-horas) 2)))
    (increase (total-horas) 1)
    (when (es_calidad_dos ?p) (increase (total-horas) 1))
    (increase (tareas-ass ?p) 1)
    )
)

(:action asignada_pr_tres 
    :parameters (?p - programador_tres ?t - tarea ?t2 - tarea)
    :precondition (and (es_tarea_asignada ?t2 ?t) (not (asignada ?t)) (< (tareas-ass ?p) 2))
    :effect (and (asignada ?t) (valida ?t2) (es_tarea_prohibida ?t2 ?p) (es_tipo_tres ?t2) (increase (total-horas) (hora-ass ?t))
    (increase (total-horas) 1)
    (when (es_calidad_dos ?p) (increase (total-horas) 1))
    (increase (tareas-ass ?p) 1)
    )
)

(:action asignada_adicional_uno 
    :parameters (?p - programador_uno ?t - tarea)
    :precondition (and (not (es_tipo_tres ?t)) (valida ?t) (es_tarea_adicional ?t) (not (es_tarea_prohibida ?t ?p)) (not (asignada ?t)) (< (tareas-ass ?p) 2))
    :effect (and (asignada ?t) (increase (tareas-ass ?p) 1))
)

(:action asignada_adicional_dos
    :parameters (?p - programador_dos ?t - tarea)
    :precondition (and (es_tarea_adicional ?t) (valida ?t) (not (es_tarea_prohibida ?t ?p)) (not (asignada ?t)) (< (tareas-ass ?p) 2))
    :effect (and (asignada ?t) (increase (tareas-ass ?p) 1))
)

(:action asignada_adicional_tres
    :parameters (?p - programador_tres ?t - tarea)
    :precondition (and (es_tarea_adicional ?t) (valida ?t) (not (es_tarea_prohibida ?t ?p)) (not (asignada ?t)) (< (tareas-ass ?p) 2))
    :effect (and (asignada ?t) (increase (tareas-ass ?p) 1))
)

)