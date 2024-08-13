(define (problem base) (:domain base)
(:objects
tarea0 - tarea
tarea1 - tarea
tarea2 - tarea
tarea3 - tarea

programador0 - programador_dos
programador1 - programador_dos
programador2 - programador_tres
programador3 - programador_dos
programador4 - programador_uno
programador5 - programador_uno
programador6 - programador_tres
programador7 - programador_dos
programador8 - programador_dos
programador9 - programador_uno
programador10 - programador_tres
programador11 - programador_uno
programador12 - programador_uno
programador13 - programador_tres
programador14 - programador_tres

)

(:init

)

(:goal (forall (?t - tarea) (asignada ?t))))
