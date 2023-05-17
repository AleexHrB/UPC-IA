
;;; ---------------------------------------------------------
;;; ontologia.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology Ontologia.ttl
;;; :Date 17/05/2023 20:46:34

(defclass Limtacion
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Preferencia
    (is-a Limtacion)
    (role concrete)
    (pattern-match reactive)
)

(defclass Restriccion
    (is-a Limtacion)
    (role concrete)
    (pattern-match reactive)
)

(defclass Composicion
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Macronutrientes
    (is-a Composicion)
    (role concrete)
    (pattern-match reactive)
)

(defclass Micronutrientes
    (is-a Composicion)
    (role concrete)
    (pattern-match reactive)
)

(defclass Plato
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot compuesto-por-ingrediente
        (type INSTANCE)
        (create-accessor read-write))
    (multislot pertenece-a-preferencia
        (type INSTANCE)
        (create-accessor read-write))
    (multislot tiene-forma-cocinar
        (type INSTANCE)
        (create-accessor read-write))
    (slot Calorias
        (type FLOAT)
        (create-accessor read-write))
    (slot Carbohidratos
        (type FLOAT)
        (create-accessor read-write))
    (slot Grasas
        (type FLOAT)
        (create-accessor read-write))
    (slot Proteinas
        (type FLOAT)
        (create-accessor read-write))
)

(defclass Plato_Desayuno
    (is-a Plato)
    (role concrete)
    (pattern-match reactive)
)

(defclass Plato_principal
    (is-a Plato)
    (role concrete)
    (pattern-match reactive)
)

(defclass Postre
    (is-a Plato)
    (role concrete)
    (pattern-match reactive)
)

(defclass Ingrediente
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot tiene-composicion
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Aceite
    (is-a Ingrediente)
    (role concrete)
    (pattern-match reactive)
)

(defclass Cereal
    (is-a Ingrediente)
    (role concrete)
    (pattern-match reactive)
)

(defclass Comida_Proteica
    (is-a Ingrediente)
    (role concrete)
    (pattern-match reactive)
)

(defclass Fruta
    (is-a Ingrediente)
    (role concrete)
    (pattern-match reactive)
)

(defclass Lacteo
    (is-a Ingrediente)
    (role concrete)
    (pattern-match reactive)
)

(defclass Verdura
    (is-a Ingrediente)
    (role concrete)
    (pattern-match reactive)
)

(defclass Almuerzo
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot compuesto-por-plato
        (type INSTANCE)
        (create-accessor read-write))
    (slot compuesto-por-postre
        (type INSTANCE)
        (create-accessor read-write))
    (multislot topDataProperty
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Cena
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot compuesto-por-plato
        (type INSTANCE)
        (create-accessor read-write))
    (slot compuesto-por-postre
        (type INSTANCE)
        (create-accessor read-write))
    (multislot topDataProperty
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Desayuno
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot compuesto-por-desayuno
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Dieta
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot compuesto-por-menu
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Forma_Cocinar
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Menu_diario
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot compuesto-almuerzo
        (type INSTANCE)
        (create-accessor read-write))
    (slot compuesto-cena
        (type INSTANCE)
        (create-accessor read-write))
    (slot compuesto-desayuno
        (type INSTANCE)
        (create-accessor read-write))
    ;;; String perteneciente a {Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo}
    (slot Dia_semana
        (type STRING)
        (create-accessor read-write))
)

(defclass Temporada
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Usuario
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot tiene-dieta
        (type INSTANCE)
        (create-accessor read-write))
    (multislot tiene-limitacion
        (type INSTANCE)
        (create-accessor read-write))
    (multislot vive-durante
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Tiene rango {0,1,2}
    (slot Actividad
        (type INTEGER)
        (create-accessor read-write))
    (slot Edad
        (type SYMBOL)
        (create-accessor read-write))
    (multislot Enfermedad
        (type STRING)
        (create-accessor read-write))
    ;;; 0 hombre
    ;;1 mujer
    (slot Sexo
        (type SYMBOL)
        (create-accessor read-write))
)

(definstances instances
    ([Batido_de_frutas_con_leche_y_un_puñado_de_nueces.] of Plato_Desayuno
    )

    ([Buñuelos_de_plátano.] of Plato_Desayuno
    )

    ([Calamares_fritos_con_aros_de_cebolla.] of Plato_principal
    )

    ([Camarones_tempura_con_salsa_agridulce.] of Plato_principal
    )

    ([Churros_con_azúcar_y_chocolate_caliente.] of Plato_Desayuno
    )

    ([Compota_de_manzana_casera_sin_azúcar.] of Postre
    )

    ([Copa_de_yogur_con_compota_de_frutas_sin_azúcar.] of Postre
    )

    ([Croquetas_de_jamón_o_pollo.] of Plato_principal
    )

    ([Empanadas_rellenas_de_carne_o_queso.] of Plato_principal
    )

    ([Ensalada_de_quinoa_con_vegetales_asados_y_aderezo_de_limón.] of Plato_principal
    )

    ([Flan_de_huevo_casero_con_caramelo_líquido_sin_azúcar.] of Postre
    )

    ([Macedonia_de_frutas_frescas.] of Postre
    )

    ([Manzana_asada_con_pasas_y_nueces.] of Postre
    )

    ([Natillas_de_vainilla_sin_azúcar.] of Postre
    )

    ([Paella_de_mariscos_y_pescado.] of Plato_principal
    )

    ([Patatas_bravas_con_salsa_picante_y_alioli.] of Plato_principal
    )

    ([Peras_al_horno_con_canela.] of Postre
    )

    ([Pollo_al_curry_con_arroz_integral_y_verduras_salteadas.] of Plato_principal
    )

    ([Pollo_al_horno_con_papas_asadas_y_brócoli_al_vapor.] of Plato_principal
    )

    ([Pollo_frito_crujiente_con_papas_fritas.] of Plato_principal
    )

    ([Rollitos_de_primavera_rellenos_de_verduras_y_pollo.] of Plato_principal
    )

    ([Salmón_a_la_parrilla_con_espárragos_y_quinoa.] of Plato_principal
    )

    ([Sopa_de_verduras_con_fideos_integrales.] of Plato_principal
    )

    ([Tacos_de_carne_de_res_magra_con_guacamole_y_ensalada_de_col.] of Plato_principal
    )

    ([Tacos_de_pescado_con_repollo_rallado_y_salsa_de_yogur.] of Plato_principal
    )

    ([Tarta_de_queso_ligera_con_base_de_galleta_integral.] of Postre
    )

    ([Tempura_de_verduras_mixtas.] of Plato_principal
    )

    ([Tortilla_de_jamón_y_queso.] of Plato_Desayuno
    )

    ([Tostada_con_queso_fresco_y_rodajas_de_tomate.] of Plato_Desayuno
    )

    ([Yogur_con_frutas_frescas.] of Plato_Desayuno
    )

    ([Avena_cocida_con_canela,_pasas_y_almendras] of Plato_Desayuno
    )

    ([Berenjenas_rellenas_de_carne_molida_y_queso,_horneadas_con_salsa_de_tomate.] of Plato_principal
    )

    ([Burrito_de_frijoles_negros,_arroz_integral,_aguacate_y_salsa_picante.] of Plato_principal
    )

    ([Ensalada_caprese_con_tomate,_mozzarella_y_albahaca,_acompañada_de_pan_integral.] of Plato_principal
    )

    ([Ensalada_de_garbanzos_con_pepino,_pimiento_rojo,_cebolla,_perejil_y_aliño_de_aceite_de_oliva_y_vinagre.] of Plato_principal
    )

    ([Ensalada_de_lentejas_con_tomate,_cebolla_roja,_perejil_y_aliño_de_vinagre_balsámico.] of Plato_principal
    )

    ([Ensalada_de_pollo_a_la_parrilla_con_lechuga,_tomate,_aguacate_y_aderezo_ligero.] of Plato_principal
    )

    ([Ensalada_de_quinoa_con_vegetales_asados,_garbanzos_y_aderezo_de_limón_y_aceite_de_oliva.] of Plato_principal
    )

    ([Ensalada_griega_con_lechuga,_pepino,_tomate,_aceitunas,_queso_feta_y_aderezo_de_aceite_de_oliva_y_limón.] of Plato_principal
    )

    ([Fajitas_de_pollo_con_pimientos_y_cebolla,_servidas_con_tortillas_de_trigo_integral.] of Plato_principal
    )

    ([Pasta_con_salsa_de_tomate_casera,_champiñones_y_espinacas.] of Plato_principal
    )

    ([Pasta_de_trigo_integral_con_salsa_de_tomate_casera,_espinacas_y_champiñones.] of Plato_principal
    )

    ([Pechuga_de_pollo_a_la_parrilla_con_verduras_asadas_como_pimientos,_calabacín_y_cebolla.] of Plato_principal
    )

    ([Pescado_a_la_plancha_con_limón_y_hierbas,_acompañado_de_quinoa_y_espárragos.] of Plato_principal
    )

    ([Pescado_al_horno_con_costra_de_hierbas_y_limón,_acompañado_de_puré_de_patatas_y_espárragos.] of Plato_principal
    )

    ([Pescado_al_horno_con_salsa_de_tomate,_alcaparras_y_aceitunas,_servido_con_patatas_al_romero.] of Plato_principal
    )

    ([Pollo_al_horno_con_aceitunas,_tomates_secos_y_hierbas,_acompañado_de_couscous.] of Plato_principal
    )

    ([Rollitos_de_berenjena_rellenos_de_arroz_integral,_espinacas_y_queso_mozzarella.] of Plato_principal
    )

    ([Sándwich_de_atún_con_pan_integral,_lechuga,_tomate_y_mayonesa.] of Plato_principal
    )

    ([Tabulé_de_trigo_integral_con_tomates_cherry,_pepino,_menta_y_jugo_de_limón.] of Plato_principal
    )

    ([Tortilla_de_espinacas_con_cebolla,_tomate_y_queso_feta,_acompañada_de_una_ensalada_de_rúcula] of Plato_principal
    )

    ([Tortilla_de_vegetales_como_calabacín,_cebolla_y_pimientos_con_una_ensalada_verde.] of Plato_principal
    )

    ([Wrap_de_pavo_con_espinacas,_tomate_y_mostaza.] of Plato_principal
    )

    ([Bizcocho_de_zanahoria_sin_azúcar] of Postre
    )

    ([Bocadillo_de_atún] of Plato_Desayuno
    )

    ([Bocadillo_de_embutido] of Plato_Desayuno
    )

    ([Cafe_con_leche] of Postre
    )

    ([Cereal_integral_con_leche] of Plato_Desayuno
    )

    ([Ceviche_de_pescado] of Plato_principal
    )

    ([Crema_de_vainilla_con_frutas_en_puré] of Postre
    )

    ([Espaguetis_con_salsa_boloñesa] of Plato_principal
    )

    ([Fideuá] of Plato_principal
    )

    ([Filete_de_lubina_a_la_plancha_con_salsa_de_limón_y_alcaparras] of Plato_principal
    )

    ([Fruta] of Postre
    )

    ([Helado_de_yogur_bajo_en_grasa] of Postre
    )

    ([Huevos_revueltos] of Plato_Desayuno
    )

    ([Mousse_de_frutas_con_gelatina_sin_azúcar] of Postre
    )

    ([Pan_tostado_con_aguacate_y_huevo_pochado] of Plato_Desayuno
    )

    ([Panqueques_de_avena] of Plato_Desayuno
    )

    ([Pudín_de_arroz_con_canela] of Postre
    )

    ([Sopa_de_pescado_y_mariscos] of Plato_principal
    )

    ([Tostadas_con_mantequilla] of Plato_Desayuno
    )

    ([Yogur_natural_con_miel_y_nueces_picadas] of Postre
    )

    ([Bistec_a_la_parrilla_con_ensalada_de_tomate_y_rúcula:] of Plato_principal
    )

)



(defmodule MAIN
    (export ?ALL)
)
;; Módulo para extraer la información del usuario
(defmodule entrada
    (import MAIN ?ALL)
    (export ?ALL)
)
;; Módulo para descartar alimentos incompatibles con el paciente
(defmodule procesado
    (import MAIN ?ALL)
    (export ?ALL)
)
;;; Modulo para construir la solución
(defmodule sintesis
    (import MAIN ?ALL)
    (export ?ALL)
)
;; Módulo para imprimir la solución
(defmodule salida
    (import MAIN ?ALL)
    (export ?ALL)
)

(defrule MAIN::inicio 
	(declare (salience 20)) 
	=> 
	(printout t "Super Galactic polynomial diet maker et al yayos solver" crlf)
    (make-instance [Invierno] of Temporada)
    (make-instance [Verano] of Temporada)
    (make-instance [Otono] of Temporada)
    (make-instance [Primavera] of Temporada)
	(focus entrada)
)

(deffunction entrada::obtener_edad ()
    (printout t "Introduzca la edad ")
    (bind ?edad (read))
    (while (or (< ?edad 60)  (> ?edad 130)) do
            (printout t "La edad introducida no es válida. Por favor, introduzca una edad válida: ") 
            (bind ?edad (read))
    )
    (printout t crlf)
    (return ?edad)
)

(deffunction entrada::obtener_sexo ()
    (printout t "Introduzca su sexo (Hombre(0)/Mujer(1)) ")
    (bind ?sexo (read))
    (while (and (neq ?sexo 0)  (neq ?sexo 1)) do
            (printout t ?sexo) 
            (printout t "Qué sos, marsiano? Introduce bien el sexo ") 
            (bind ?sexo (read))
    )
    (printout t crlf)
    (return ?sexo)
)

(deffunction entrada::obtener_tipo_enfermedad ($?list_values)
	(printout t crlf)
    (printout t "¿Tiene algún tipo de Enfermedad?" crlf)
    (printout t "Estos son los tipos: " $?list_values crlf)
    (printout t "Para acabar escriba FIN." crlf)
    (bind ?response (read))
    (bind $?return_list (create$))
    (while (not (eq ?response FIN)) do
        (if (and (member$ ?response $?list_values)(not(member$ ?response $?return_list))) then
            (bind $?return_list (insert$ $?return_list (+ (length$ $?return_list) 1) ?response))
        )
        (bind ?response (read))
    )
    (printout t crlf)
    (return $?return_list)
)

(deffunction entrada::selecciona_una_opcion (?question $?opcions)
    (printout t ?question)
    (printout t " Las opciones son: " $?opcions crlf)
    (bind ?response (read))
    (while (not (member$ ?response $?opcions)) do 
        (printout t "La respuesta introducida no forma parte de las opciones. Por favor, elija otra vez." crlf)
        (bind ?response (read))
    )
    (return ?response)
)

(deffunction entrada::instanciacion_persona ()
    ; preguntamos datos biologicos de la persona
    (bind ?edad (obtener_edad))
    (bind ?sexo (obtener_sexo))
    
    ;Sobre su estado actual
    (bind ?estilo (selecciona_una_opcion "Introduzca su estilo de vida usando el número correspondiente (0:Sedentaria , 1:Normal, 2:Activo): " 0 1 2))
    (bind ?temporada (selecciona_una_opcion "Introduzca la temporada del año" Invierno Primavera Otono Verano))

    ;Sobre preferencias y restricciones
    (bind ?preferencia (selecciona_una_opcion "Si tiene alguna preferencia introduzcala, en caso contrario eliga 'No': " No Vegana Vegetariana Mediterranea Proteica Pescado Carne))

    (bind $?enfermedades (obtener_tipo_enfermedad Hipertension Diabetes Osteoporosis Alergia_Nueces))


    ;Hay que cambiar los nombres, pero eso cuando esté la ontología puesta
    (make-instance usuario of Usuario (Enfermedad $?enfermedades) (Sexo ?sexo) (Edad ?edad) (Actividad ?estilo) (tiene-limitacion ?preferencia) (vive-durante ?temporada)) 
)


(defrule entrada::crear_anciano
	(declare (salience 10))
	=> 
	(printout t "Ahora vamos a hacerte una pregunta para poder recomendarte una buena dieta" crlf crlf)
	(instanciacion_persona)
	(focus procesado)
)



;;FALTA EL PUTISIMO PAN I EMBUTIDOS
;;HIPERTENSOS

(defrule procesado::eliminar_lacteos_desaconsejados_para_hipertensos "Quita los lacteos desaconsejados para los que padecen hipertension"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Ingrediente <- (object (is-a Lacteo))

    (test (and (eq ?a Hipertension) (or (eq ?Ingrediente Queso) (eq ?Ingrediente Mantequilla))))
    => (send ?Ingrediente delete)
)

(defrule procesado::eliminar_vegetales_desaconsejadas_para_hipertensos "Quita los vegetales desaconsejados para los que padecen hipertension"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Ingrediente <- (object (is-a Verdura))

    (test (and (eq ?a Hipertension) (eq ?Ingrediente Espinaca )))
    => (send ?Ingrediente delete)
)

(defrule procesado::eliminar_proteinas_desaconsejadas_para_hipertensos "Quita los alimentos proteicos desaconsejados para los que padecen hipertension"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Ingrediente <- (object (is-a Comida_Proteica))

    (test (and (eq ?a Hipertension)(eq ?Ingrediente Marisco)))
    => (send ?Ingrediente delete)
)


;; HAN DE EVITAR ALIMENTOS AZUCARADOS I PROCESADOS, CAFE, LACTEOS CON NATA
(defrule procesado::eliminar_lacteos_desaconsejados_para_diabeticos "Quita los lacteos desaconsejados para los que padecen diabetes de cualquier tipo"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Ingrediente <- (object (is-a Lacteo))

    (test (and (eq ?a Diabetes) (or (eq ?Ingrediente Queso) (eq ?Ingrediente Mantequilla) (eq ?Ingrediente Nata)) ))
    => (send ?Ingrediente delete)
)

(defrule procesado::eliminar_proteinas_desaconsejadas_para_diabeticos "Quita los alimentos proteicos desaconsejados para los que padecen diabetes de cualquier tipo"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Ingrediente <- (object (is-a Comida_Proteica))

    (test (and (eq ?a Diabetes) (or (eq ?Ingrediente Carne_roja) (eq ?Ingrediente Huevo))))
    => (send ?Ingrediente delete)
)

;;HAN DE EVITAR EMBUTIDOS, ULTRAPROCESADOS, CAFE , LACTEOS CON NATA, PAN ARROZ GALLETAS
;; EL YOGUR Y LECHE DESNATADOS EXISTEN
(defrule procesado::eliminar_lacteos_desaconsejados_para_osteoporosicos "Quita los lacteos desaconsejados para los que padecen osteoporosis"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Ingrediente <- (object (is-a Lacteo))

    (test (and (eq ?a Osteoporosis)(or (eq ?Ingrediente Mantequilla) (eq ?Ingrediente Nata)) ))
    => (send ?Ingrediente delete)
)

;;Los embutidos, foies , carne roja y otros carnicos grasos son desaconsejadisimos , las carnes magras son mejores
(defrule procesado::eliminar_proteinas_desaconsejadas_para_osteoporosicos "Quita los alimentos proteicos desaconsejados para los que padecen osteoporosis"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Ingrediente <- (object (is-a Comida_Proteica))

    (test (and (eq ?a Osteoporosis) (eq ?Ingrediente Carne_roja) ))
    => (send ?Ingrediente delete)
)

(defrule procesado::cambio_sintesis "Pasamos de procesado a síntesis cuando ya no hay nada más que descartar"
	(declare (salience -20))
	=>
	(focus sintesis)
)


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


(deffunction sintesis::random_menu ()
	(bind $?menu_list (create$))
	(loop-for-count (?i 1 7) do 
		(bind ?desayun (find-instance ((?plat Plato_Desayuno)) (eq 3 3)))
		(bind ?comida (find-instance ((?plat Plato_principal)) (eq 3 3)))
		(bind ?postreComida (find-instance ((?plat Postre)) (eq 3 3)))
		(bind ?cena (find-instance ((?plat Plato_principal)) (eq 3 3)))
		(bind ?postreCena (find-instance ((?plat Postre)) (eq 3 3)))

        (printout t ?desayun crlf)
        (printout t ?comida crlf)
        (printout t ?postreComida crlf)
        (printout t ?cena crlf)
        (printout t ?postreCena crlf)

		(bind ?desayuno (make-instance (gensym*) of Desayuno (compuesto-por-desayuno ?desayun)))
		(bind ?almuerzo (make-instance (gensym*) of Almuerzo (compuesto-por-plato ?comida) (compuesto-por-postre ?postreComida)))
		(bind ?cena (make-instance (gensym*) of Cena (compuesto-por-plato ?cena) (compuesto-por-postre ?postreCena)))
		(bind ?pollo (make-instance (gensym*) of Menu_diario (compuesto-desayuno ?desayuno) (compuesto-almuerzo ?almuerzo) (compuesto-cena ?cena) (Dia-semana ?i)))

		(bind $?menu-list (insert$ $?menu-list (+ (length$ $?menu_list) 1) ?pollo))
	)
	(bind ?dieta (make-instance (gensym) of Dieta (compuesto-por-menu $?menu_list)))
	(return ?dieta)
)



(defrule sintesis::crear_dieta
    	(declare (salience 5))
	?usuario <- (object (is-a Usuario))
	=>
	(printout t "Empezamos la creación de la dieta" crlf)
	
	;; Obtenemos los parámetros de nuestro usuario
	;;(bind ?preferencia (send ?usuario get-Preferencia))
	;;(bind ?temporada (send ?usuario get-Temporada))
    
    ;; Creamos una lista con los objetivos de la dieta
    ;;(bind $?objetivos (obtener_objetivos ?temporada ?preferencia ?Cal ?CH ?Grasa ?Proteina))
	
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


(defrule sintesis::cambio_salida "Pasamos de síntesis a output"
	(declare (salience -20))
	=>
	(printout t "Escribiendo el programa de ejercicios..." crlf)
	(focus salida)
)

(deffunction salida::imprimirPlato (?plato)
    (bind ?i 1)
    (while (<= ?i (length$ (send ?plato get-compuesto-por-ingrediente)))
        do
        (bind ?ingrediente (nth$ ?i (send ?plato compuesto-por-ingrediente)))
        (bind ?formaCocinar (nth$ ?i (send ?plato tiene-forma-cocinar)))
        (printout t ?ingrediente " " ?formaCocinar crlf)
        (bind ?i (+ ?i 1))
    )

)

(deffunction salida::imprimirComida (?comida)
    (bind ?i 1)
    (while (<= ?i (length$ (send ?comida get-compuesto-por-plato)))
        do
        (bind ?plato (nth$ ?i (send ?comida get-compuesto-por-plato)))
        (imprimirPlato ?plato)
        (bind ?i (+ ?i 1))
    )
)

(deffunction salida::imprimirMenuDiario (?menuDiario)
    (bind ?dia (send ?menuDiario get-Dia_semana))
    (printout t "DIA DE LA SEMANA: " ?dia crlf)

    (bind ?i 1)
    (while (<= ?i (length$ (send ?menuDiario get-compuesto-por-comidas)))
        do
        (bind ?comida (nth$ ?i (send ?menuDiario get-compuesto-por-comidas)))
        (imprimirComida ?comida)
        (bind ?i (+ ?i 1))
    )
    (printout t crlf)
)

(defrule salida::mostrarDieta
    (declare (salience 10))
    ?dieta <- (object (is-a Dieta))
    =>
    (bind ?i 1)
    (while (<= ?i (length$ (send ?dieta get-compuesto-por-menu)))
        do
        (bind ?menuDiario (nth$ ?i (send ?dieta get-compuesto-por-menu)))
        (imprimirMenuDiario ?menuDiario)
        (bind ?i (+ ?i 1))
    )
)