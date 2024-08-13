(define (problem base) (:domain base)
(:objects
tarea0 - tarea
tarea1 - tarea

programador0 - programador_uno
programador1 - programador_uno
programador2 - programador_tres

)

(:init

)

(:goal (forall (?t - tarea) (asignada ?t))))
