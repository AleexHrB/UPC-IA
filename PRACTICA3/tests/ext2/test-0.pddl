(define (problem ext2) (:domain ext2)
(:objects
tarea0 - tarea
tarea1 - tarea
tarea2 - tarea
tarea3 - tarea
tarea4 - tarea
tarea5 - tarea
tarea6 - tarea
tarea7 - tarea
tarea8 - tarea
tarea9 - tarea
tarea10 - tarea
tarea11 - tarea

programador0 - programador_dos
programador1 - programador_tres
programador2 - programador_uno
programador3 - programador_uno

)

(:init
(es_tarea_asignada tarea6 tarea0)
(es_tarea_adicional tarea 6)
(= (hora-tarea tarea0)45)
(= (hora-tarea tarea6)0)
(es_tipo_dos tarea1)
(es_tipo_dos tarea7)
(es_tarea_asignada tarea7 tarea1)
(es_tarea_adicional tarea 7)
(= (hora-tarea tarea1)84)
(= (hora-tarea tarea7)0)
(es_tipo_tres tarea2)
(es_tipo_tres tarea8)
(es_tarea_asignada tarea8 tarea2)
(es_tarea_adicional tarea 8)
(= (hora-tarea tarea2)84)
(= (hora-tarea tarea8)0)
(es_tarea_asignada tarea9 tarea3)
(es_tarea_adicional tarea 9)
(= (hora-tarea tarea3)88)
(= (hora-tarea tarea9)0)
(es_tipo_dos tarea4)
(es_tipo_dos tarea10)
(es_tarea_asignada tarea10 tarea4)
(es_tarea_adicional tarea 10)
(= (hora-tarea tarea4)8)
(= (hora-tarea tarea10)0)
(es_tipo_dos tarea5)
(es_tipo_dos tarea11)
(es_tarea_asignada tarea11 tarea5)
(es_tarea_adicional tarea 11)
(= (hora-tarea tarea5)95)
(= (hora-tarea tarea11)0)
(= (total-horas) 0)

)

(:goal (forall (?t - tarea) (asignada ?t))))

(:metric minimize (total-horas))
