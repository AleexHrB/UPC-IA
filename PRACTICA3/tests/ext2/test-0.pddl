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
tarea12 - tarea
tarea13 - tarea
tarea14 - tarea
tarea15 - tarea
tarea16 - tarea
tarea17 - tarea

programador0 - programador_uno
programador1 - programador_tres
programador2 - programador_uno
programador3 - programador_tres
programador4 - programador_uno
programador5 - programador_dos
programador6 - programador_dos
programador7 - programador_dos
programador8 - programador_tres
programador9 - programador_dos
programador10 - programador_uno
programador11 - programador_uno
programador12 - programador_tres

)

(:init
(es_tipo_tres tarea0)
(es_tipo_tres tarea9)
(es_tarea_asignada tarea9 tarea0)
(es_tarea_adicional tarea9)
(= (hora-ass tarea0)20)
(= (hora-ass tarea9)0)
(es_tipo_dos tarea1)
(es_tipo_dos tarea10)
(es_tarea_asignada tarea10 tarea1)
(es_tarea_adicional tarea10)
(= (hora-ass tarea1)28)
(= (hora-ass tarea10)0)
(es_tipo_dos tarea2)
(es_tipo_dos tarea11)
(es_tarea_asignada tarea11 tarea2)
(es_tarea_adicional tarea11)
(= (hora-ass tarea2)43)
(= (hora-ass tarea11)0)
(es_tipo_tres tarea3)
(es_tipo_tres tarea12)
(es_tarea_asignada tarea12 tarea3)
(es_tarea_adicional tarea12)
(= (hora-ass tarea3)53)
(= (hora-ass tarea12)0)
(es_tipo_dos tarea4)
(es_tipo_dos tarea13)
(es_tarea_asignada tarea13 tarea4)
(es_tarea_adicional tarea13)
(= (hora-ass tarea4)38)
(= (hora-ass tarea13)0)
(es_tipo_tres tarea5)
(es_tipo_tres tarea14)
(es_tarea_asignada tarea14 tarea5)
(es_tarea_adicional tarea14)
(= (hora-ass tarea5)93)
(= (hora-ass tarea14)0)
(es_tarea_asignada tarea15 tarea6)
(es_tarea_adicional tarea15)
(= (hora-ass tarea6)68)
(= (hora-ass tarea15)0)
(es_tipo_tres tarea7)
(es_tipo_tres tarea16)
(es_tarea_asignada tarea16 tarea7)
(es_tarea_adicional tarea16)
(= (hora-ass tarea7)80)
(= (hora-ass tarea16)0)
(es_tipo_tres tarea8)
(es_tipo_tres tarea17)
(es_tarea_asignada tarea17 tarea8)
(es_tarea_adicional tarea17)
(= (hora-ass tarea8)83)
(= (hora-ass tarea17)0)
(es_calidad_dos programador1)
(es_calidad_dos programador2)
(es_calidad_dos programador9)
(= (total-horas) 0)

)

(:goal (forall (?t - tarea) (asignada ?t)))

(:metric minimize (total-horas))
)
