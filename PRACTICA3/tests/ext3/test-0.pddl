(define (problem ext3) (:domain ext3)
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

programador0 - programador_uno
programador1 - programador_tres
programador2 - programador_tres
programador3 - programador_uno
programador4 - programador_tres

)

(:init
(es_tipo_tres tarea0)
(es_tipo_tres tarea8)
(es_tarea_asignada tarea8 tarea0)
(es_tarea_adicional tarea 8)
(= (hora-tarea tarea0)57)
(= (hora-tarea tarea8)0)
(es_tipo_dos tarea1)
(es_tipo_dos tarea9)
(es_tarea_asignada tarea9 tarea1)
(es_tarea_adicional tarea 9)
(= (hora-tarea tarea1)49)
(= (hora-tarea tarea9)0)
(es_tipo_tres tarea2)
(es_tipo_tres tarea10)
(es_tarea_asignada tarea10 tarea2)
(es_tarea_adicional tarea 10)
(= (hora-tarea tarea2)101)
(= (hora-tarea tarea10)0)
(es_tipo_dos tarea3)
(es_tipo_dos tarea11)
(es_tarea_asignada tarea11 tarea3)
(es_tarea_adicional tarea 11)
(= (hora-tarea tarea3)62)
(= (hora-tarea tarea11)0)
(es_tipo_tres tarea4)
(es_tipo_tres tarea12)
(es_tarea_asignada tarea12 tarea4)
(es_tarea_adicional tarea 12)
(= (hora-tarea tarea4)39)
(= (hora-tarea tarea12)0)
(es_tipo_dos tarea5)
(es_tipo_dos tarea13)
(es_tarea_asignada tarea13 tarea5)
(es_tarea_adicional tarea 13)
(= (hora-tarea tarea5)45)
(= (hora-tarea tarea13)0)
(es_tarea_asignada tarea14 tarea6)
(es_tarea_adicional tarea 14)
(= (hora-tarea tarea6)69)
(= (hora-tarea tarea14)0)
(es_tarea_asignada tarea15 tarea7)
(es_tarea_adicional tarea 15)
(= (hora-tarea tarea7)16)
(= (hora-tarea tarea15)0)
(= (tareas-ass programador0) 0)
(= (tareas-ass programador1) 0)
(= (tareas-ass programador2) 0)
(= (tareas-ass programador3) 0)
(es_calidad_dos programador4)
(= (tareas-ass programador4) 0)
(= (total-horas) 0)

)

(:goal (forall (?t - tarea) (asignada ?t))))

(:metric minimize (total-horas))
