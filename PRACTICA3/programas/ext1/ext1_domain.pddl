
(define (domain ext1)


(:requirements :strips :adl)

(:types 
    programador tarea - object
    programador_uno programador_dos programador_tres - programador

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
)


(:action asignada_pr_uno 
    :parameters (?p - programador_uno ?t - tarea ?t2 - tarea)
    :precondition (and (not (es_tipo_tres ?t)) (es_tarea_asignada ?t2 ?t) (not (asignada ?t)))
    :effect (and (asignada ?t) (es_tarea_prohibida ?t2 ?p) (valida ?t2))
)

(:action asignada_pr_dos
    :parameters (?p - programador_dos ?t - tarea ?t2 - tarea)
    :precondition (and (es_tarea_asignada ?t2 ?t) (not (asignada ?t)))
    :effect (and (asignada ?t) (es_tarea_prohibida ?t2 ?p) (es_tipo_dos ?t2) (valida ?t2))
)

(:action asignada_pr_tres
    :parameters (?p - programador_tres ?t - tarea ?t2 - tarea)
    :precondition (and (es_tarea_asignada ?t2 ?t) (not (asignada ?t)))
    :effect (and (asignada ?t) (es_tarea_prohibida ?t2 ?p) (es_tipo_tres ?t2) (valida ?t2))
)

(:action asignada_adicional_uno 
    :parameters (?p - programador_uno ?t - tarea)
    :precondition (and (not (es_tipo_tres ?t)) (es_tarea_adicional ?t) (not (es_tarea_prohibida ?t ?p)) (not (asignada ?t)) (valida ?t))
    :effect (and (asignada ?t))
)

(:action asignada_adicional_dos
    :parameters (?p - programador_dos ?t - tarea)
    :precondition (and (es_tarea_adicional ?t) (not (es_tarea_prohibida ?t ?p)) (not (asignada ?t)) (valida ?t))
    :effect (and (asignada ?t))
)

(:action asignada_adicional_tres
    :parameters (?p - programador_tres ?t - tarea)
    :precondition (and (es_tarea_adicional ?t) (not (es_tarea_prohibida ?t ?p)) (not (asignada ?t)) (valida ?t))
    :effect (and (asignada ?t))
)


)