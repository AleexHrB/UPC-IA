;Header and description

(define (domain base)


(:requirements :adl :fluents :typing)

(:types
    programador tarea - object
    programador_uno programador_dos programador_tres - programador
)


(:predicates
    (es_tipo_tres ?t - tarea)
    (asignada ?t - tarea)
    (asignada_a ?t - tarea ?p - programador)
)

(:action asignar_pr_uno
    :parameters (?p - programador_uno ?t - tarea)
    :precondition (and (not (es_tipo_tres ?t)) (not (asignada ?t)))
    :effect (and (asignada ?t) (asignada_a ?t ?p))
)

(:action asginar_pr_dos
    :parameters (?p - programador_dos ?t - tarea)
    :precondition (and (not (asignada ?t)))
    :effect (and (asignada ?t) (asignada_a ?t ?p))
)


(:action asginar_pr_tres
    :parameters (?p - programador_tres ?t - tarea)
    :precondition (and (not (asignada ?t)))
    :effect (and (asignada ?t) (asignada_a ?t ?p))
)








)