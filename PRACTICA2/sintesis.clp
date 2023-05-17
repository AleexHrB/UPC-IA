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
	(ditribuir-hidratos)
    ;; Contar proteinas
    (ditribuir-proteinas)
    ;; Contar grasas
    (completar-grasas)
    ;;No se?
    (hacer-correciones)
)