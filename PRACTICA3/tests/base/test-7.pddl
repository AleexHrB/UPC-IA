(define (problem base) (:domain base)
(:objects
tarea0 - tarea
tarea1 - tarea
tarea2 - tarea
tarea3 - tarea

programador0 - programador_uno
programador1 - programador_tres
programador2 - programador_dos
programador3 - programador_tres
programador4 - programador_tres
programador5 - programador_dos
programador6 - programador_uno
programador7 - programador_tres
programador8 - programador_tres
programador9 - programador_dos
programador10 - programador_tres

)

(:init

)

(:goal (forall (?t - tarea) (asignada ?t))))
