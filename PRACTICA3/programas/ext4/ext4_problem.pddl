(define (problem ext4) (:domain ext4)
(:objects 
    kayand - programador_tres
    mamasita - programador_dos
    bob - programador_uno
    oscar - programador_uno
    programar_supersopa - tarea
    entrar_inlab - tarea
    francisco_javier - tarea
    pasar_eda - tarea
    vender_alma - tarea
    costa_ferrer_vidal - tarea
    pedir_cerveza - tarea
    pagar - tarea
    planificar_boda - tarea
    asistir_boda - tarea
    alberto - programador_dos

    escuchar_bb - tarea
    pagar_spotify - tarea
    javi - programador_dos

    navegar_reddit - tarea
    pagar_endesa - tarea
    clon - programador_uno

    tres_de_maig - tarea
    trabajo - tarea
    fibvisiona - programador_tres


    laia - programador_uno

)

    (:init
    (es_tarea_asignada pasar_eda programar_supersopa)
    (es_tarea_asignada vender_alma entrar_inlab)
    (es_tarea_asignada costa_ferrer_vidal francisco_javier)
    (es_tarea_asignada asistir_boda planificar_boda)
    (es_tarea_asignada pagar pedir_cerveza)
    (es_tarea_asignada escuchar_bb pagar_spotify)
    (es_tarea_asignada navegar_reddit pagar_endesa)
    (es_tarea_asignada escuchar_bb pagar_spotify)
    (es_tarea_asignada trabajo tres_de_maig)

    (es_tipo_tres programar_supersopa)
    (= (total-horas) 0)
    (= (hora-tarea programar_supersopa) 5)
    (= (hora-tarea entrar_inlab) 5)
    (= (hora-tarea francisco_javier) 100)
    (= (hora-tarea pedir_cerveza) 4)
    (= (hora-tarea pagar_spotify) 1)
    (= (hora-tarea pagar_endesa) 5)
    (= (hora-tarea planificar_boda) 20)
    (= (hora-tarea tres_de_maig) 12)
    (= (tareas-ass bob) 0)
    (= (tareas-ass mamasita) 0)
    (= (tareas-ass kayand) 0)
    (= (tareas-ass oscar) 0)
    (= (tareas-ass alberto) 0)
    (= (tareas-ass clon) 0)
    (= (tareas-ass javi) 0)
    (= (tareas-ass fibvisiona) 0)
    (= (tareas-ass laia) 0)
    (= (ponderacion-horas) 100)
    (= (ponderacion-personas) 20)
    (= (personas-currando) 0)
    ;(es_calidad_dos kayand)
    (es_calidad_dos mamasita)
)

(:goal (forall (?t - tarea) (asignada ?t)))

(:metric minimize (+ (* (ponderacion-horas) (total-horas)) (* (ponderacion-personas) (personas-currando))))


)
