(deftemplate sintesis::recomendacion
    (slot nombre (type STRING))
    (slot cantidad (type INTEGER))
)

(defrule sintesis::start
    (declare (salience 30))
    =>
    (assert (recomendacion (nombre "Calorias")) )
    (assert (recomendacion (nombre "Hidratos de Carbono")) )
    (assert (recomendacion (nombre "Grasas")) )
    (assert (recomendacion (nombre "Proteinas")) )
)

(defrule sintesis::tratar_enfermedad
    (declare (salience 20))
    ?Cal <- (recomendacion (nombre "Calorias")(value ?t))
	?CH <- (recomendacion (nombre "Hidratos de Carbono")(value ?x))
	?Grasa <- (recomendacion (nombre "Grasas") (value ?y))
	?Proteina <- (recomendacion (nombre "Proteinas")(value ?z))
	?restriccion <- (object (is-a Restriccion) )
	=>
	(bind ?tipo (send ?restriccion get-Tipo))
	(switch ?tipo
		(case Cardiovascular then (modify ?nFlexibilidad (value (+ ?x 1))) (modify ?nEquilibrio (value (+ ?z 1))))
    )
	(send ?enfermedad delete)
)

(defrule sintesis::tratar_edad_sexo
    (declare (salience 20))
    ?Cal <- (recomendacion (nombre "Calorias")(value ?t))
	?CH <- (recomendacion (nombre "Hidratos de Carbono")(value ?x))
	?Grasa <- (recomendacion (nombre "Grasas") (value ?y))
	?Proteina <- (recomendacion (nombre "Proteinas")(value ?z))
	?usuairo <- (object (is-a Persona))
    =>
	(bind ?tipo (send ?restriccion get-Tipo))
	(switch ?tipo
		(case Cardiovascular then (modify ?nFlexibilidad (value (+ ?x 1))) (modify ?nEquilibrio (value (+ ?z 1))))
    )
	(send ?enfermedad delete)
)

(deffunction sintesis::random_menu
	(bind $?menu_list (create$))
	(loop-for-count (?i 1 7)) do 
		(bind ?desayun (find-instance (?Plat Plato-Desayuno)))
		(bind ?comida (find-instance (?Plat Plato-principal)))
		(bind ?postreComida (find-instance (?Plat Postre)))
		(bind ?cena (find-instance (?Plat Plato-principal)))
		(bind ?postreCena (find-instance (?Plat Postre)))

		(bind ?desayuno (make-instance (gensym*) of Desayuno (compuesto-por-desayuno ?desayun)))
		(bind ?almuerzo (make-instance (gensym*) of Almuerzo (compuesto-por-plato ?comida) (compuesto-por-postre ?postreComida)))
		(bind ?cena (make-instance (gensym*) of Cena (compuesto-por-plato ?cena) (compuesto-por-postre ?postreCena)))
		(bind ?pollo (make-instance (gensym*) of Menu_diario (compuesto-desayuno ?desayuno) (compuesto-almuerzo ?almuerzo) (compuesto-cena ?cena) (Dia-semana ?i)))

		(bind $?menu-list (insert$ $?menu-list (+ (length$ $?menu_list) 1) ?pollo))
	)
	(bind ?dieta (make-instance (gensym) (compuesto-por-menu $?menu_list))
	(return ?dieta)
)


(defrule sintesis::crear_dieta
    	(declare (salience 5))
	(recomendacion (nombre "Calorias")(value ?Cal))
	(recomendacion (nombre "Hidratos de Carbono")(value ?CH))
	(recomendacion (nombre "Grasas") (value ?Grasa))
	(recomendacion (nombre "Proteinas")(value ?Proteina))
	?usuario <- (object (is-a Persona))
	=>
	(printout t "Empezamos la creación de la dieta" crlf)
	
	;; Obtenemos los parámetros de nuestro usuario
	(bind ?preferencia (send ?usuario get-Preferencia))
	(bind ?temporada (send ?usuario get-Temporada))
    
    ;; Creamos una lista con los objetivos de la dieta
    (bind $?objetivos (obtener_objetivos ?temporada ?preferencia ?Cal ?CH ?Grasa ?Proteina))
	
	;; Creamos la dieta
	(bind ?juanAntonio (random_menu))
	;;(ditribuir-hidratos)
    
	;; Contar proteinas
    ;;(ditribuir-proteinas)
    
	;; Contar grasas
    ;;(completar-grasas)
    
	;;No se?
    ;;(hacer-correciones)
)