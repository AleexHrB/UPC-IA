
(define (domain ext1_domain)


(:requirements :strips :adl)

(:types 
    programador tarea - object
    programador_uno programador_dos programador_tres - programador

)


(:predicates 
    (asignada ?t - tarea)
    (asignada_a ?t - tarea ?p - programador)

    ;t2 es tarea asignada de t?
    (es_tarea_asignada ?t2 - tarea ?t - tarea)
    (es_tipo_tres ?t - tarea)
)


(:action asignada_pr_uno 
    :parameters (?p - programador_uno ?t - tarea ?t2 - tarea)
    :precondition (and (not (es_tipo_tres ?t)) (es_tarea_asignada ?t2 ?t) (not (asignada ?t)))
    :effect (and (asignada ?t) (asignada ?t2) (asignada_a ?t ?p) (asignada_a ?t2 ?p) )
)

(:action asignada_pr_dos
    :parameters (?p - programador_dos ?t - tarea ?t2 - tarea)
    :precondition (and (es_tarea_asignada ?t2 ?t) (not (asignada ?t)))
    :effect (and (asignada ?t) (asignada ?t2) (asignada_a ?t ?p) (asignada_a ?t2 ?p) )
)

(:action asignada_pr_tres
    :parameters (?p - programador_tres ?t - tarea ?t2 - tarea)
    :precondition (and (es_tarea_asignada ?t2 ?t) (not (asignada ?t)))
    :effect (and (asignada ?t) (asignada ?t2) (asignada_a ?t ?p) (asignada_a ?t2 ?p) )
)


)