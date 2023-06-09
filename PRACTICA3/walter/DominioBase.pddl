(define (domain plan)
(:requirements :adl :fluents :typing)
(:types
    programador tarea - object
    programadorH1 programadorH2 programadorH3 - programador
)


(:predicates
    (es_tipo_tres ?t - tarea)
    (asignada ?t - tarea)
    (asignada_a ?t - tarea ?p - programador)
)

(:action asignar_pr_uno
    :parameters (?p - programadorH1 ?t - tarea)
    :precondition (and (not (es_tipo_tres ?t)) (not (asignada ?t)))
    :effect (and (asignada ?t) (asignada_a ?t ?p))
)

(:action asginar_pr_dos
    :parameters (?p - programadorH2 ?t - tarea)
    :precondition (and (not (asignada ?t)))
    :effect (and (asignada ?t) (asignada_a ?t ?p))
)


(:action asginar_pr_tres
    :parameters (?p - programadorH3 ?t - tarea)
    :precondition (and (not (asignada ?t)))
    :effect (and (asignada ?t) (asignada_a ?t ?p))
)

)