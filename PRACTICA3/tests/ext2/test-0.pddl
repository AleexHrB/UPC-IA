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
tarea18 - tarea
tarea19 - tarea
tarea20 - tarea
tarea21 - tarea
tarea22 - tarea
tarea23 - tarea
tarea24 - tarea
tarea25 - tarea
tarea26 - tarea
tarea27 - tarea

programador0 - programador_tres
programador1 - programador_dos

)

(:init
(es_tarea_asignada tarea14 tarea0)
(es_tarea_adicional tarea14)
(= (hora-tarea tarea0)98)
(= (hora-tarea tarea14)0)
(es_tarea_asignada tarea15 tarea1)
(es_tarea_adicional tarea15)
(= (hora-tarea tarea1)12)
(= (hora-tarea tarea15)0)
(es_tarea_asignada tarea16 tarea2)
(es_tarea_adicional tarea16)
(= (hora-tarea tarea2)10)
(= (hora-tarea tarea16)0)
(es_tarea_asignada tarea17 tarea3)
(es_tarea_adicional tarea17)
(= (hora-tarea tarea3)50)
(= (hora-tarea tarea17)0)
(es_tipo_tres tarea4)
(es_tipo_tres tarea18)
(es_tarea_asignada tarea18 tarea4)
(es_tarea_adicional tarea18)
(= (hora-tarea tarea4)60)
(= (hora-tarea tarea18)0)
(es_tarea_asignada tarea19 tarea5)
(es_tarea_adicional tarea19)
(= (hora-tarea tarea5)72)
(= (hora-tarea tarea19)0)
(es_tarea_asignada tarea20 tarea6)
(es_tarea_adicional tarea20)
(= (hora-tarea tarea6)66)
(= (hora-tarea tarea20)0)
(es_tipo_dos tarea7)
(es_tipo_dos tarea21)
(es_tarea_asignada tarea21 tarea7)
(es_tarea_adicional tarea21)
(= (hora-tarea tarea7)63)
(= (hora-tarea tarea21)0)
(es_tarea_asignada tarea22 tarea8)
(es_tarea_adicional tarea22)
(= (hora-tarea tarea8)101)
(= (hora-tarea tarea22)0)
(es_tipo_dos tarea9)
(es_tipo_dos tarea23)
(es_tarea_asignada tarea23 tarea9)
(es_tarea_adicional tarea23)
(= (hora-tarea tarea9)41)
(= (hora-tarea tarea23)0)
(es_tipo_tres tarea10)
(es_tipo_tres tarea24)
(es_tarea_asignada tarea24 tarea10)
(es_tarea_adicional tarea24)
(= (hora-tarea tarea10)34)
(= (hora-tarea tarea24)0)
(es_tarea_asignada tarea25 tarea11)
(es_tarea_adicional tarea25)
(= (hora-tarea tarea11)8)
(= (hora-tarea tarea25)0)
(es_tipo_tres tarea12)
(es_tipo_tres tarea26)
(es_tarea_asignada tarea26 tarea12)
(es_tarea_adicional tarea26)
(= (hora-tarea tarea12)5)
(= (hora-tarea tarea26)0)
(es_tipo_dos tarea13)
(es_tipo_dos tarea27)
(es_tarea_asignada tarea27 tarea13)
(es_tarea_adicional tarea27)
(= (hora-tarea tarea13)5)
(= (hora-tarea tarea27)0)
(= (total-horas) 0)

)

(:goal (forall (?t - tarea) (asignada ?t)))

(:metric minimize (total-horas))
)
