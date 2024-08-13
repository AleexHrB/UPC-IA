;;; ---------------------------------------------------------
;;; ontologia.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology Ontologia.ttl
;;; :Date 28/05/2023 21:58:43

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
    (slot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Plato
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot compuesto-por-ingrediente
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
    (multislot Tipo-dieta
        (type STRING)
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
    (slot nombre
        (type STRING)
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

(defclass Dulces
    (is-a Ingrediente)
    (role concrete)
    (pattern-match reactive)
)

(defclass Limtacion
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Restriccion
    (is-a Limtacion)
    (role concrete)
    (pattern-match reactive)
    (slot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Almuerzo
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot compuesto-por-plato
        (type INSTANCE)
        (create-accessor read-write))
    (slot compuesto-por-postre
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Cena
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot compuesto-por-plato
        (type INSTANCE)
        (create-accessor read-write))
    (slot compuesto-por-postre
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Desayuno
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot compuesto-por-desayuno
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
    (slot nombre
        (type STRING)
        (create-accessor read-write))
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

(defclass Preferencia
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Temporada
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Usuario
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot tiene-dieta
        (type INSTANCE)
        (create-accessor read-write))
    (multislot tiene-restriccion
        (type INSTANCE)
        (create-accessor read-write))
    (multislot vive-durante
        (type INSTANCE)
        (create-accessor read-write))
    (slot tiene-preferencia
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Tiene rango {0,1,2}
    (slot Actividad
        (type INTEGER)
        (create-accessor read-write))
    (slot Edad
        (type SYMBOL)
        (create-accessor read-write))
    ;;; 0 hombre, 1 mujer
    (slot Sexo
        (type SYMBOL)
        (create-accessor read-write))
)

(definstances instances
    ([Calamares_fritos_con_aros_de_cebolla.] of Plato_principal
         (compuesto-por-ingrediente  [Cebolla] [Marisco])
         (tiene-forma-cocinar  [Frito])
         (Calorias  500)
         (Carbohidratos  45)
         (Grasas  18)
         (Proteinas  25)
         (Tipo-dieta  "Pescado")
    )

    ([Camarones_tempura_con_salsa_agridulce.] of Plato_principal
         (compuesto-por-ingrediente  [Pescado_blanco])
         (tiene-forma-cocinar  [Frito])
         (Calorias  187)
         (Carbohidratos  13.46)
         (Grasas  3.6)
         (Proteinas  23.49)
         (Tipo-dieta  "Pescado")
    )

    ([Churros_con_azúcar_y_chocolate_caliente.] of Plato_Desayuno
         (compuesto-por-ingrediente  [Aceite_de_oliva] [Chocolate] [Churros])
         (tiene-forma-cocinar  [Frito])
         (Calorias  425)
         (Carbohidratos  65)
         (Grasas  17.5)
         (Proteinas  7.5)
         (Tipo-dieta  "Vegetariana")
    )

    ([Cien_gramos_de_patatas_bravas_con_salsa_picante_y_alioli.] of Plato_principal
         (compuesto-por-ingrediente  [Huevo] [Patata])
         (Calorias  187)
         (Carbohidratos  17)
         (Grasas  12)
         (Proteinas  2.1)
    )

    ([Compota_de_manzana_casera_sin_azúcar.] of Postre
         (compuesto-por-ingrediente  [Manzana])
         (Calorias  64)
         (Carbohidratos  15)
         (Grasas  0.5)
         (Proteinas  0.5)
         (Tipo-dieta  "Vegetariana")
    )

    ([Copa_de_yogur_con_compota_de_frutas_sin_azúcar.] of Postre
         (compuesto-por-ingrediente  [Fresa] [Yogur])
         (Calorias  292)
         (Carbohidratos  59.5)
         (Grasas  1.6)
         (Proteinas  5.6)
         (Tipo-dieta  "Mediterranea" "Vegetariana")
    )

    ([Cuatro_Rollitos_de_primavera_rellenos_de_verduras_y_pollo.] of Plato_principal
         (compuesto-por-ingrediente  [Carne_blanca] [Pimiento] [Zanahoria])
         (tiene-forma-cocinar  [Frito])
         (Calorias  253.2)
         (Carbohidratos  29.76)
         (Grasas  11.36)
         (Proteinas  8)
    )

    ([Doscientos_gramos_de_croquetas_de_jamón_o_pollo.] of Plato_principal
         (compuesto-por-ingrediente  [Carne_blanca] [Embutido] [Trigo])
         (tiene-forma-cocinar  [Frito])
         (Calorias  378)
         (Carbohidratos  35.2)
         (Grasas  18.6)
         (Proteinas  16.8)
         (Tipo-dieta  "Mediterranea")
    )

    ([Empanadas_rellenas_de_carne_o_queso.] of Plato_principal
         (compuesto-por-ingrediente  [Carne_roja] [Queso] [Trigo])
         (Calorias  263)
         (Carbohidratos  20.22)
         (Grasas  17.25)
         (Proteinas  6.65)
    )

    ([Natillas_de_vainilla_sin_azúcar.] of Postre
         (compuesto-por-ingrediente  [Huevo] [Vainilla])
         (Calorias  139)
         (Carbohidratos  22.3)
         (Grasas  3.6)
         (Proteinas  4.4)
         (Tipo-dieta  "Vegetariana")
    )

    ([Paella_de_mariscos_y_pescado.] of Plato_principal
         (compuesto-por-ingrediente  [Arroz] [Marisco] [Pescado_blanco])
         (Calorias  379)
         (Carbohidratos  40.3)
         (Grasas  13.06)
         (Proteinas  22.85)
         (Tipo-dieta  "Mediterranea" "Pescado")
    )

    ([Peras_al_horno_con_canela.] of Postre
         (compuesto-por-ingrediente  [Pera])
         (tiene-forma-cocinar  [Horno])
         (Calorias  96)
         (Carbohidratos  25.66)
         (Grasas  0.2)
         (Proteinas  0.63)
         (Tipo-dieta  "Vegetariana")
    )

    ([Pollo_frito_crujiente_con_patatas_fritas.] of Plato_principal
         (compuesto-por-ingrediente  [Carne_blanca] [Patata])
         (tiene-forma-cocinar  [Frito])
         (Calorias  500)
         (Carbohidratos  3)
         (Grasas  10)
         (Proteinas  47)
    )

    ([Salmón_a_la_parrilla_con_espárragos_y_quinoa.] of Plato_principal
         (compuesto-por-ingrediente  [Esparragos] [Pescado_azul] [Quinoa])
         (tiene-forma-cocinar  [Parrilla])
         (Calorias  243)
         (Carbohidratos  0.7)
         (Grasas  10.74)
         (Proteinas  34.04)
         (Tipo-dieta  "Pescado")
    )

    ([Sopa_de_verduras_con_fideos_integrales.] of Plato_principal
         (compuesto-por-ingrediente  [Fideos] [Zanahoria])
         (Calorias  175)
         (Carbohidratos  27)
         (Grasas  3)
         (Proteinas  7)
         (Tipo-dieta  "Vegetariana")
    )

    ([Tacos_de_pescado_con_salsa_de_yogur.] of Plato_principal
         (compuesto-por-ingrediente  [Pescado_blanco] [Yogur])
         (Calorias  325)
         (Carbohidratos  27.5)
         (Grasas  12.5)
         (Proteinas  22.5)
         (Tipo-dieta  "Mediterranea" "Pescado")
    )

    ([Tempura_de_judias_zanahorias_y_patatas.] of Plato_principal
         (compuesto-por-ingrediente  [Judias] [Patata] [Zanahoria])
         (tiene-forma-cocinar  [Frito])
         (Calorias  101)
         (Carbohidratos  8.68)
         (Grasas  6.36)
         (Proteinas  2.66)
         (Tipo-dieta  "Vegetariana")
    )

    ([Tortilla_de_jamón_y_queso.] of Plato_Desayuno
         (compuesto-por-ingrediente  [Huevo] [Queso])
         (Calorias  225)
         (Carbohidratos  7.5)
         (Grasas  12.5)
         (Proteinas  17.5)
         (Tipo-dieta  "Mediterranea")
    )

    ([Tostada_con_queso_fresco_y_rodajas_de_tomate.] of Plato_Desayuno
         (compuesto-por-ingrediente  [Queso] [Tomate] [Tostada])
         (Calorias  225)
         (Carbohidratos  27.5)
         (Grasas  7.5)
         (Proteinas  12.5)
         (Tipo-dieta  "Mediterranea" "Vegetariana")
    )

    ([Yogur_con_fresas.] of Plato_Desayuno
         (compuesto-por-ingrediente  [Fresa] [Yogur])
         (Calorias  145)
         (Carbohidratos  25.8)
         (Grasas  3.2)
         (Proteinas  3.4)
         (Tipo-dieta  "Mediterranea" "Vegetariana")
    )

    ([1_tostada_con_1/4_aguacate_y_1_huevo_pochado] of Plato_Desayuno
         (compuesto-por-ingrediente  [Aguacate] [Huevo] [Tostada])
         (Calorias  359)
         (Carbohidratos  24.4)
         (Grasas  19.3)
         (Proteinas  20.6)
         (Tipo-dieta  "Mediterranea" "Vegetariana")
    )

    ([Bistec_a_la_parrilla] of Plato_principal
         (compuesto-por-ingrediente  [Carne_roja])
         (tiene-forma-cocinar  [Parrilla])
         (Calorias  276)
         (Carbohidratos  0)
         (Grasas  19.27)
         (Proteinas  24)
    )

    ([Bizcocho_de_zanahoria_sin_azúcar] of Postre
         (compuesto-por-ingrediente  [Huevo] [Zanahoria])
         (Calorias  384)
         (Carbohidratos  49.40)
         (Grasas  13.6)
         (Proteinas  5.26)
    )

    ([Bocadillo_de_atún] of Plato_Desayuno
         (compuesto-por-ingrediente  [Pan] [Pescado_azul])
         (Calorias  325)
         (Carbohidratos  32.5)
         (Grasas  12.5)
         (Proteinas  17.5)
         (Tipo-dieta  "Pescado")
    )

    ([Bocadillo_de_salchicon] of Plato_Desayuno
         (compuesto-por-ingrediente  [Embutido] [Pan])
         (Calorias  325)
         (Carbohidratos  32.5)
         (Grasas  17.5)
         (Proteinas  12.5)
    )

    ([Cafe_con_leche] of Postre
         (compuesto-por-ingrediente  [Cafe] [Leche])
         (Calorias  75)
         (Carbohidratos  7.5)
         (Grasas  3)
         (Proteinas  3)
    )

    ([Crema_de_vainilla_con_pera_en_puré] of Postre
         (compuesto-por-ingrediente  [Pera] [Vainilla])
         (Calorias  100)
         (Carbohidratos  0)
         (Grasas  0.7)
         (Proteinas  20)
         (Tipo-dieta  "Vegetariana")
    )

    ([Dos_Tostadas_con_mantequilla] of Plato_Desayuno
         (compuesto-por-ingrediente  [Mantequilla] [Tostada])
         (Calorias  179)
         (Carbohidratos  15)
         (Grasas  11)
         (Proteinas  5)
         (Tipo-dieta  "Vegetariana")
    )

    ([Fideuá] of Plato_principal
         (compuesto-por-ingrediente  [Fideos] [Marisco])
         (Calorias  387)
         (Carbohidratos  42.3)
         (Grasas  19)
         (Proteinas  16)
         (Tipo-dieta  "Mediterranea" "Pescado")
    )

    ([Filete_de_lubina_a_la_plancha_con_salsa_de_limón] of Plato_principal
         (compuesto-por-ingrediente  [Pescado_azul])
         (tiene-forma-cocinar  [Plancha])
         (Calorias  148)
         (Carbohidratos  4.7)
         (Grasas  5.7)
         (Proteinas  19.5)
         (Tipo-dieta  "Pescado")
    )

    ([Panqueque_de_avena] of Plato_Desayuno
         (compuesto-por-ingrediente  [Avena])
         (Calorias  175)
         (Carbohidratos  22.5)
         (Grasas  7.5)
         (Proteinas  7.5)
         (Tipo-dieta  "Vegetariana")
    )

    ([Sopa_de_pescado] of Plato_principal
         (compuesto-por-ingrediente  [Marisco] [Pescado_blanco])
         (Calorias  76)
         (Carbohidratos  1)
         (Grasas  3.2)
         (Proteinas  10.7)
         (Tipo-dieta  "Pescado")
    )

    ([Tres_Huevos_revueltos] of Plato_Desayuno
         (compuesto-por-ingrediente  [Huevo])
         (Calorias  320)
         (Carbohidratos  1.34)
         (Grasas  7.45)
         (Proteinas  6.76)
         (Tipo-dieta  "Mediterranea" "Vegetariana")
    )

    ([Yogur_natural_con_miel_y_nueces_picadas] of Postre
         (compuesto-por-ingrediente  [Miel] [Nuez] [Yogur])
         (Calorias  150)
         (Carbohidratos  16)
         (Grasas  7)
         (Proteinas  11.92)
         (Tipo-dieta  "Mediterranea" "Vegetariana")
    )

    ([Aceite_de_oliva] of Aceite
         (nombre  "Aceite_de_Oliva")
    )

    ([Aceituna] of Verdura
         (tiene-composicion  [Calcio] [Hierro])
         (nombre  "Aceituna")
    )

    ([Aguacate] of Fruta
         (tiene-composicion  [Potasio])
         (nombre  "Aguacate")
    )

    ([Arroz] of Cereal
         (tiene-composicion  [Potasio])
         (nombre  "Arroz")
    )

    ([Asado] of Forma_Cocinar
         (nombre  "Asado")
    )

    ([Avena] of Cereal
         (nombre  "Avena")
    )

    ([Avena_cocida_con_canela_y_pasas] of Plato_Desayuno
         (compuesto-por-ingrediente  [Avena] [Pasa])
         (Calorias  325)
         (Carbohidratos  47.5)
         (Grasas  12.5)
         (Proteinas  12.5)
         (Tipo-dieta  "Vegetariana")
    )

    ([Azucar] of Dulces
         (nombre  "Azucar")
    )

    ([Batido_de_150ml_leche_un_platano_y_un_puñado_de_nueces] of Plato_Desayuno
         (compuesto-por-ingrediente  [Leche] [Nuez] [Platano])
         (Calorias  248)
         (Carbohidratos  38.1)
         (Grasas  9.18)
         (Proteinas  8.1)
         (Tipo-dieta  "Vegetariana")
    )

    ([Berenjena] of Verdura
         (tiene-composicion  [Potasio])
         (nombre  "Berenjena")
    )

    ([Berenjenas_rellenas_de_carne] of Plato_principal
         (compuesto-por-ingrediente  [Berenjena] [Carne_roja])
         (Calorias  170)
         (Carbohidratos  18)
         (Grasas  6)
         (Proteinas  11)
         (Tipo-dieta  "Mediterranea")
    )

    ([Brocoli] of Verdura
         (tiene-composicion  [Calcio])
         (nombre  "Brocoli")
    )

    ([Burrito_de_frijoles_negros] of Plato_principal
         (compuesto-por-ingrediente  [Frijoles] [Pan])
         (Calorias  425)
         (Carbohidratos  65)
         (Grasas  12.5)
         (Proteinas  17.5)
    )

    ([Cafe] of Fruta
         (nombre  "Cafe")
    )

    ([Calabacin] of Verdura
         (tiene-composicion  [Potasio])
         (nombre  "Calabacin")
    )

    ([Calcio] of Micronutrientes
         (nombre  "Calcio")
    )

    ([Carne_blanca] of Comida_Proteica
         (tiene-composicion  [Potasio])
    )

    ([Carne_roja] of Comida_Proteica
         (tiene-composicion  [Hierro] [Potasio])
    )

    ([Cebolla] of Verdura
         (tiene-composicion  [Calcio] [Potasio])
         (nombre  "Cebolla")
    )

    ([Chocolate] of Dulces
         (tiene-composicion  [Calcio] [Hierro])
         (nombre  "Chocolate")
    )

    ([Churros] of Dulces
         (tiene-composicion  [Calcio] [Potasio])
         (nombre  "Churros")
    )

    ([Cono_de_helado_de_yogur_bajo_en_grasa] of Postre
         (compuesto-por-ingrediente  [Trigo] [Yogur])
         (Calorias  142)
         (Carbohidratos  7)
         (Grasas  5.1)
         (Proteinas  2.9)
         (Tipo-dieta  "Mediterranea" "Vegetariana")
    )

    ([Cuatro_Buñuelos] of Plato_Desayuno
         (compuesto-por-ingrediente  [Azucar] [Huevo] [Trigo])
         (tiene-forma-cocinar  [Frito])
         (Calorias  225)
         (Carbohidratos  27.5)
         (Grasas  12.5)
         (Proteinas  7.5)
         (Tipo-dieta  "Vegetariana")
    )

    ([Dos_fajitas_de_pollo_y_verduras] of Plato_principal
         (compuesto-por-ingrediente  [Carne_blanca] [Pimiento] [Zanahoria])
         (Calorias  704)
         (Carbohidratos  83.04)
         (Grasas  24.22)
         (Proteinas  39.34)
    )

    ([Dos_gelatinas_sin_azúcar] of Plato_Desayuno
         (compuesto-por-ingrediente  [Gelatina])
         (Calorias  18)
         (Carbohidratos  4.4)
         (Grasas  0)
         (Proteinas  0)
    )

    ([Embutido] of Comida_Proteica
         (tiene-composicion  [Hierro])
         (nombre  "Embutido")
    )

    ([Ensalada_Caprese] of Plato_principal
         (compuesto-por-ingrediente  [Queso] [Tomate])
         (Calorias  284)
         (Carbohidratos  5.62)
         (Grasas  21.91)
         (Proteinas  16.8)
         (Tipo-dieta  "Mediterranea" "Vegetariana")
    )

    ([Ensalada_de_garbanzos] of Plato_principal
         (compuesto-por-ingrediente  [Legumbres])
         (Calorias  382)
         (Carbohidratos  29.61)
         (Grasas  26.5)
         (Proteinas  8.68)
         (Tipo-dieta  "Mediterranea" "Vegetariana")
    )

    ([Ensalada_de_lechuga_tomate_y_pollo] of Plato_principal
         (compuesto-por-ingrediente  [Carne_blanca] [Lechuga] [Tomate])
         (tiene-forma-cocinar  [Parrilla])
         (Calorias  275)
         (Carbohidratos  12.5)
         (Grasas  12.5)
         (Proteinas  27.5)
         (Tipo-dieta  "Mediterranea" "Vegetariana")
    )

    ([Ensalada_de_lentejas_mediterranea] of Plato_principal
         (compuesto-por-ingrediente  [Legumbres])
         (Calorias  273)
         (Carbohidratos  25.2)
         (Grasas  10.5)
         (Proteinas  13.8)
         (Tipo-dieta  "Mediterranea" "Vegetariana")
    )

    ([Ensalada_de_quinoa_con_brocoli] of Plato_principal
         (compuesto-por-ingrediente  [Brocoli] [Quinoa])
         (Calorias  339)
         (Carbohidratos  48)
         (Grasas  10.8)
         (Proteinas  11.1)
         (Tipo-dieta  "Vegetariana")
    )

    ([Ensalada_de_tomate_aceitunas_y_queso_feta] of Plato_principal
         (compuesto-por-ingrediente  [Aceituna] [Queso] [Tomate])
         (Calorias  225)
         (Carbohidratos  12.5)
         (Grasas  17.5)
         (Proteinas  7.5)
         (Tipo-dieta  "Mediterranea" "Vegetariana")
    )

    ([Esparragos] of Verdura
         (tiene-composicion  [Potasio])
         (nombre  "Esparragos")
    )

    ([Espinacas] of Verdura
         (tiene-composicion  [Hierro] [Potasio])
         (nombre  "Espinacas")
    )

    ([Fideos] of Cereal
         (tiene-composicion  [Calcio] [Potasio])
         (nombre  "Fideos")
    )

    ([Flan_de_huevo] of Postre
         (compuesto-por-ingrediente  [Azucar] [Huevo])
         (Calorias  204)
         (Carbohidratos  27.68)
         (Grasas  8.34)
         (Proteinas  5.4)
         (Tipo-dieta  "Mediterranea" "Vegetariana")
    )

    ([Fresa] of Fruta
         (tiene-composicion  [Calcio] [Potasio])
         (nombre  "Fresa")
    )

    ([Frijoles] of Verdura
         (tiene-composicion  [Hierro] [Potasio])
         (nombre  "Frijoles")
    )

    ([Frito] of Forma_Cocinar
         (nombre  "Frito")
    )

    ([Gelatina] of Comida_Proteica
         (nombre  "Gelatina")
    )

    ([Hamburgesa_de_pollo] of Plato_principal
         (compuesto-por-ingrediente  [Carne_blanca])
         (Calorias  142)
         (Carbohidratos  0)
         (Grasas  7.35)
         (Proteinas  18)
    )

    ([Hierro] of Micronutrientes
         (nombre  "Hierro")
    )

    ([Horno] of Forma_Cocinar
         (nombre  "Horno")
    )

    ([Huevo] of Comida_Proteica
         (nombre  "Huevo")
    )

    ([Judias] of Verdura
         (tiene-composicion  [Potasio])
         (nombre  "Judias")
    )

    ([Leche] of Lacteo
         (tiene-composicion  [Calcio] [Potasio])
         (nombre  "Leche")
    )

    ([Lechuga] of Verdura
         (nombre  "Lechuga")
    )

    ([Legumbres] of Comida_Proteica
         (tiene-composicion  [Calcio] [Hierro] [Potasio])
         (nombre  "Legumbres")
    )

    ([Macedonia_de_mango_fresa_melocoton_y_melón] of Postre
         (compuesto-por-ingrediente  [Fresa] [Melocoton] [Melon])
         (Calorias  108)
         (Carbohidratos  25)
         (Grasas  1.63)
         (Proteinas  1.27)
         (Tipo-dieta  "Mediterranea" "Vegetariana")
    )

    ([Mantequilla] of Lacteo
         (tiene-composicion  [Mantequilla])
         (nombre  "Mantequilla")
    )

    ([Manzana] of Fruta
         (tiene-composicion  [Potasio])
         (nombre  "Manzana")
    )

    ([Manzana_asada] of Postre
         (compuesto-por-ingrediente  [Manzana])
         (tiene-forma-cocinar  [Asado])
         (Calorias  162)
         (Carbohidratos  42.4)
         (Grasas  0.27)
         (Proteinas  0.63)
         (Tipo-dieta  "Vegetariana")
    )

    ([Marisco] of Comida_Proteica
         (tiene-composicion  [Hierro])
         (nombre  "Marisco")
    )

    ([Melocoton] of Fruta
         (tiene-composicion  [Potasio])
         (nombre  "Melocoton")
    )

    ([Melon] of Fruta
         (tiene-composicion  [Potasio])
         (nombre  "Melon")
    )

    ([Miel] of Dulces
         (nombre  "Miel")
    )

    ([Nuez] of Comida_Proteica
         (tiene-composicion  [Calcio] [Potasio])
         (nombre  "Nuez")
    )

    ([Pan] of Cereal
         (tiene-composicion  [Calcio] [Potasio])
         (nombre  "Pan")
    )

    ([Parrilla] of Forma_Cocinar
         (nombre  "Parrilla")
    )

    ([Pasa] of Fruta
         (tiene-composicion  [Potasio])
         (nombre  "Pasa")
    )

    ([Pasta] of Cereal
         (tiene-composicion  [Calcio] [Potasio])
         (nombre  "Pasta")
    )

    ([Pasta_con_tomate] of Plato_principal
         (compuesto-por-ingrediente  [Pasta] [Tomate])
         (Calorias  215)
         (Carbohidratos  49.54)
         (Grasas  1.23)
         (Proteinas  11.32)
         (Tipo-dieta  "Mediterranea" "Vegetariana")
    )

    ([Pasta_integral_con_salsa_de_tomate] of Plato_principal
         (compuesto-por-ingrediente  [Pasta] [Tomate])
         (Calorias  275)
         (Carbohidratos  47.5)
         (Grasas  7.5)
         (Proteinas  12.5)
         (Tipo-dieta  "Mediterranea" "Vegetariana")
    )

    ([Patata] of Verdura
         (tiene-composicion  [Calcio] [Hierro] [Potasio])
         (nombre  "Patata")
    )

    ([Pechuga_de_pollo_a_la_parrilla] of Plato_principal
         (compuesto-por-ingrediente  [Carne_blanca])
         (tiene-forma-cocinar  [Parrilla])
         (Calorias  275)
         (Carbohidratos  12.5)
         (Grasas  12.5)
         (Proteinas  32.5)
         (Tipo-dieta  "Mediterranea")
    )

    ([Pera] of Fruta
         (nombre  "Pera")
    )

    ([Pescado_a_la_plancha] of Plato_principal
         (compuesto-por-ingrediente  [Pescado_azul])
         (Calorias  325)
         (Carbohidratos  32.5)
         (Grasas  12.5)
         (Proteinas  22.5)
         (Tipo-dieta  "Pescado")
    )

    ([Pescado_al_horno] of Plato_principal
         (compuesto-por-ingrediente  [Pescado_azul])
         (Calorias  142)
         (Carbohidratos  0.37)
         (Grasas  3.89)
         (Proteinas  24.79)
         (Tipo-dieta  "Pescado")
    )

    ([Pescado_azul] of Comida_Proteica
         (nombre  "Pescado_azul")
    )

    ([Pescado_blanco] of Comida_Proteica
         (nombre  "Pescado_blanco")
    )

    ([Pimiento] of Verdura
         (tiene-composicion  [Potasio])
         (nombre  "Pimiento")
    )

    ([Pizza_4_quesos] of Plato_principal
         (compuesto-por-ingrediente  [Queso] [Tomate] [Trigo])
         (Calorias  840)
         (Carbohidratos  90)
         (Grasas  34.5)
         (Proteinas  42)
         (Tipo-dieta  "Mediterranea" "Vegetariana")
    )

    ([Plancha] of Forma_Cocinar
         (nombre  "Plancha")
    )

    ([Platano] of Fruta
         (tiene-composicion  [Potasio])
         (nombre  "Platano")
    )

    ([Pollo_al_curry] of Plato_principal
         (compuesto-por-ingrediente  [Carne_blanca])
         (Calorias  293)
         (Carbohidratos  11.19)
         (Grasas  15.74)
         (Proteinas  27.07)
    )

    ([Pollo_al_horno_con_patatas] of Plato_principal
         (compuesto-por-ingrediente  [Carne_blanca] [Patata])
         (tiene-forma-cocinar  [Horno])
         (Calorias  325)
         (Carbohidratos  22.5)
         (Grasas  12.5)
         (Proteinas  32.5)
         (Tipo-dieta  "Mediterranea")
    )

    ([Potasio] of Micronutrientes
         (nombre  "Potasio")
    )

    ([Queso] of Lacteo
         (tiene-composicion  [Calcio])
         (nombre  "Queso")
    )

    ([Quinoa] of Verdura
         (tiene-composicion  [Calcio] [Hierro])
         (nombre  "Quinoa")
    )

    ([Sándwich_de_atún_con_pan_integral] of Plato_principal
         (compuesto-por-ingrediente  [Pan] [Pescado_azul])
         (Calorias  325)
         (Carbohidratos  37.5)
         (Grasas  12.5)
         (Proteinas  17.5)
         (Tipo-dieta  "Pescado")
    )

    ([Tacos_de_carne] of Plato_principal
         (compuesto-por-ingrediente  [Carne_roja])
         (Calorias  345)
         (Carbohidratos  25.34)
         (Grasas  19.79)
         (Proteinas  17.02)
    )

    ([Tarta_de_queso] of Postre
         (compuesto-por-ingrediente  [Azucar] [Queso])
         (Calorias  257)
         (Carbohidratos  20.4)
         (Grasas  18)
         (Proteinas  4.4)
         (Tipo-dieta  "Vegetariana")
    )

    ([Tomate] of Verdura
         (tiene-composicion  [Potasio])
         (nombre  "Tomate")
    )

    ([Tortilla_de_calabacín] of Plato_principal
         (compuesto-por-ingrediente  [Calabacin] [Huevo])
         (Calorias  225)
         (Carbohidratos  12.5)
         (Grasas  12.5)
         (Proteinas  12.5)
         (Tipo-dieta  "Mediterranea" "Vegetariana")
    )

    ([Tortilla_de_espinacas] of Plato_principal
         (compuesto-por-ingrediente  [Espinacas] [Huevo])
         (Calorias  246)
         (Carbohidratos  10.61)
         (Grasas  16.55)
         (Proteinas  14.63)
         (Tipo-dieta  "Mediterranea" "Vegetariana")
    )

    ([Tostada] of Cereal
         (tiene-composicion  [Calcio])
         (nombre  "Tostada")
    )

    ([Trigo] of Cereal
         (tiene-composicion  [Calcio] [Potasio])
         (nombre  "Trigo")
    )

    ([Vainilla] of Verdura
         (nombre  "Vainilla")
    )

    ([Wrap_de_pavo_con_espinacas_y_mostaza] of Plato_principal
         (compuesto-por-ingrediente  [Carne_blanca] [Espinacas])
         (Calorias  275)
         (Carbohidratos  27.5)
         (Grasas  10)
         (Proteinas  17.5)
         (Tipo-dieta  "Vegetariana")
    )

    ([Yogur] of Lacteo
         (tiene-composicion  [Calcio] [Potasio])
         (nombre  "Yogur")
    )

    ([Zanahoria] of Verdura
         (tiene-composicion  [Calcio] [Potasio])
         (nombre  "Zanahoria")
    )

)
