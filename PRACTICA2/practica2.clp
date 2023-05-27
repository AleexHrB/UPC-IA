;;; ---------------------------------------------------------
;;; ontologia.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology Ontologia.ttl
;;; :Date 27/05/2023 09:27:16

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

(defclass Limtacion
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Restriccion
    (is-a Limtacion)
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

(defclass Dulces
    (is-a Ingrediente)
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

(defclass Almuerzo
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot compuesto-por-plato
        (type INSTANCE)
        (create-accessor read-write))
    (multislot compuesto-por-postre
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
    (multislot compuesto-por-postre
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
    (multislot Enfermedad
        (type STRING)
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
    )

    ([Aceituna] of Verdura
         (tiene-composicion  [Calcio] [Hierro])
    )

    ([Aguacate] of Fruta
         (tiene-composicion  [Potasio])
    )

    ([Arroz] of Cereal
         (tiene-composicion  [Potasio])
    )

    ([Asado] of Forma_Cocinar
    )

    ([Avena] of Cereal
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
    )

    ([Burrito_de_frijoles_negros] of Plato_principal
         (compuesto-por-ingrediente  [Frijoles] [Pan])
         (Calorias  425)
         (Carbohidratos  65)
         (Grasas  12.5)
         (Proteinas  17.5)
    )

    ([Cafe] of Fruta
    )

    ([Calabacin] of Verdura
         (tiene-composicion  [Potasio])
    )

    ([Calcio] of Micronutrientes
    )

    ([Carne_blanca] of Comida_Proteica
         (tiene-composicion  [Potasio])
    )

    ([Carne_roja] of Comida_Proteica
         (tiene-composicion  [Hierro] [Potasio])
    )

    ([Cebolla] of Verdura
         (tiene-composicion  [Calcio] [Potasio])
    )

    ([Chocolate] of Dulces
         (tiene-composicion  [Calcio] [Hierro])
    )

    ([Churros] of Dulces
         (tiene-composicion  [Calcio] [Potasio])
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
    )

    ([Espinacas] of Verdura
         (tiene-composicion  [Hierro] [Potasio])
    )

    ([Fideos] of Cereal
         (tiene-composicion  [Calcio] [Potasio])
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
    )

    ([Frijoles] of Verdura
         (tiene-composicion  [Hierro] [Potasio])
    )

    ([Frito] of Forma_Cocinar
    )

    ([Gelatina] of Comida_Proteica
    )

    ([Hamburgesa_de_pollo] of Plato_principal
         (compuesto-por-ingrediente  [Carne_blanca])
         (Calorias  142)
         (Carbohidratos  0)
         (Grasas  7.35)
         (Proteinas  18)
    )

    ([Hierro] of Micronutrientes
    )

    ([Horno] of Forma_Cocinar
    )

    ([Huevo] of Comida_Proteica
    )

    ([Judias] of Verdura
         (tiene-composicion  [Potasio])
    )

    ([Leche] of Lacteo
         (tiene-composicion  [Calcio] [Potasio])
    )

    ([Lechuga] of Verdura
    )

    ([Legumbres] of Comida_Proteica
         (tiene-composicion  [Calcio] [Hierro] [Potasio])
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
    )

    ([Manzana] of Fruta
         (tiene-composicion  [Potasio])
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
    )

    ([Melocoton] of Fruta
         (tiene-composicion  [Potasio])
    )

    ([Melon] of Fruta
         (tiene-composicion  [Potasio])
    )

    ([Miel] of Dulces
    )

    ([Nuez] of Comida_Proteica
         (tiene-composicion  [Calcio] [Potasio])
    )

    ([Pan] of Cereal
         (tiene-composicion  [Calcio] [Potasio])
    )

    ([Parrilla] of Forma_Cocinar
    )

    ([Pasa] of Fruta
         (tiene-composicion  [Potasio])
    )

    ([Pasta] of Cereal
         (tiene-composicion  [Calcio] [Potasio])
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
    )

    ([Pescado_blanco] of Comida_Proteica
    )

    ([Pimiento] of Verdura
         (tiene-composicion  [Potasio])
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
    )

    ([Platano] of Fruta
         (tiene-composicion  [Potasio])
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
    )

    ([Queso] of Lacteo
         (tiene-composicion  [Calcio])
    )

    ([Quinoa] of Verdura
         (tiene-composicion  [Calcio] [Hierro])
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
    )

    ([Trigo] of Cereal
         (tiene-composicion  [Calcio] [Potasio])
    )

    ([Vainilla] of Verdura
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
    )

    ([Zanahoria] of Verdura
         (tiene-composicion  [Calcio] [Potasio])
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
    (import entrada ?ALL)
    (export ?ALL)
)
;;; Modulo para construir la solución
(defmodule sintesis
    (import MAIN ?ALL)
    (import entrada ?ALL)
    (import procesado ?ALL)
    (export ?ALL)
)
;; Módulo para imprimir la solución
(defmodule salida
    (import MAIN ?ALL)
    (import entrada ?ALL)
    (import procesado ?ALL)
    (import sintesis ?ALL)
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
            (printout t "Introduce bien el sexo (0 o 1) ") 
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

    (printout t ?preferencia crlf)
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
(deffunction eliminar_ingrediente (?Ingrediente)
    (bind ?platos_list (find-all-instances ((?plato Plato)) (member$ ?Ingrediente (send ?plato get-compuesto-por-ingrediente))))
    (loop-for-count (?i 1 (length$ ?platos_list))
        (send (nth$ ?i ?platos_list) delete)
    )
)

(deffunction eliminar_formacocinar (?FormaCocinar)
    (bind ?platos_list (find-all-instances ((?plato Plato)) (member$ ?FormaCocinar (send ?plato get-tiene-forma-cocinar))))
    (loop-for-count (?i 1 (length$ ?platos_list))
        (send (nth$ ?i ?platos_list) delete)
    )
)

(defrule procesado::eliminar_lacteos_desaconsejados_para_hipertensos "Quita los lacteos desaconsejados para los que padecen hipertension"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Ingrediente <- (object (is-a Lacteo))

    (test (and (eq ?a Hipertension) (or (eq ?Ingrediente Queso) (eq ?Ingrediente Mantequilla))))
    => (eliminar_ingrediente ?Ingrediente)
)

(defrule procesado::eliminar_vegetales_desaconsejadas_para_hipertensos "Quita los vegetales desaconsejados para los que padecen hipertension"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Ingrediente <- (object (is-a Verdura))

    (test (and (eq ?a Hipertension) (eq ?Ingrediente Espinaca )))
    => (eliminar_ingrediente ?Ingrediente)
)

(defrule procesado::eliminar_proteinas_desaconsejadas_para_hipertensos "Quita los alimentos proteicos desaconsejados para los que padecen hipertension"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Ingrediente <- (object (is-a Comida_Proteica))

    (test (and (eq ?a Hipertension) (or (eq ?Ingrediente Marisco) (eq ?Ingrediente Embutido) )))
    => (eliminar_ingrediente ?Ingrediente)
)

(defrule procesado::eliminar_dulces_desaconsejados_para_hipertensos "Quita los alimentos dulces desaconsejados para los que padecen hipertension"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Ingrediente <- (object (is-a Dulces))

    (test (and (eq ?a Hipertension)(eq ?Ingrediente Miel)))
    => (eliminar_ingrediente ?Ingrediente)
)

;; HAN DE EVITAR ALIMENTOS MUY SALADOS O CON AZUCAR REFINADO Y GRASAS AÑADIDAS QUE SUBEN LA TENSIÓN ARTERIAL 
(defrule procesado::eliminar_lacteos_desaconsejados_para_diabeticos "Quita los lacteos desaconsejados para los que padecen diabetes de cualquier tipo"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Ingrediente <- (object (is-a Lacteo))

    (test (and (eq ?a Diabetes) (or (eq ?Ingrediente Queso) (eq ?Ingrediente Mantequilla) (eq ?Ingrediente Nata)) ))
    => (eliminar_ingrediente ?Ingrediente)
)

(defrule procesado::eliminar_proteinas_desaconsejadas_para_diabeticos "Quita los alimentos proteicos desaconsejados para los que padecen diabetes de cualquier tipo"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Ingrediente <- (object (is-a Comida_Proteica))

    (test (and (eq ?a Diabetes) (or (eq ?Ingrediente Carne_roja) (eq ?Ingrediente Huevo) (eq ?Ingrediente Embutido))))
    => (eliminar_ingrediente ?Ingrediente)
)

;;PAN DE TRIGO REFINADO ES MALISIMO 
(defrule procesado::eliminar_cereales_desaconsejadas_para_diabeticos "Quita los alimentos cereales desaconsejados para los que padecen diabetes de cualquier tipo"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Ingrediente <- (object (is-a Cereal))

    (test (and (eq ?a Diabetes) (or (eq ?Ingrediente Pan) (eq ?Ingrediente Tostada) )))
    => (eliminar_ingrediente ?Ingrediente)
)

(defrule procesado::eliminar_dulces_desaconsejados_para_diabeticos "Quita los alimentos dulces desaconsejados para los que padecen diabetes de cualquier tipo"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Ingrediente <- (object (is-a Dulces))

    (test (and (eq ?a Diabetes) (or (eq ?Ingrediente Churros) (eq ?Ingrediente Chocolate) (eq ?Ingrediente Azucar) (eq ?Ingrediente Miel) )))
    => (eliminar_ingrediente ?Ingrediente)
)

;;HAN DE EVITAR EMBUTIDOS, ULTRAPROCESADOS, CAFE , LACTEOS CON NATA, PAN ARROZ GALLETAS
;; EL YOGUR Y LECHE DESNATADOS EXISTEN
(defrule procesado::eliminar_lacteos_desaconsejados_para_osteoporosicos "Quita los lacteos desaconsejados para los que padecen osteoporosis"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Ingrediente <- (object (is-a Lacteo))

    (test (and (eq ?a Osteoporosis)(or (eq ?Ingrediente Mantequilla) (eq ?Ingrediente Nata)) ))
    => (eliminar_ingrediente ?Ingrediente)
)

;;Los embutidos, foies , carne roja y otros carnicos grasos son desaconsejadisimos , las carnes magras son mejores
(defrule procesado::eliminar_proteinas_desaconsejadas_para_osteoporosicos "Quita los alimentos proteicos desaconsejados para los que padecen osteoporosis"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Ingrediente <- (object (is-a Comida_Proteica))

    (test (and (eq ?a Osteoporosis) (or (eq ?Ingrediente Carne_roja) (eq ?Ingrediente Embutido)) ))
    => (eliminar_ingrediente ?Ingrediente)
)

(defrule procesado::eliminar_cereal_desaconsejados_para_osteoporosicos "Quita los alimentos con cereales desaconsejados para los que padecen osteoporosis"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Ingrediente <- (object (is-a Comida_Proteica))

    (test (and (eq ?a Osteoporosis)  (or (eq ?Ingrediente Pan) (eq ?Ingrediente Tostada) (eq ?Ingrediente Arroz)) ))
    => (eliminar_ingrediente ?Ingrediente)
)

(defrule procesado::eliminar_fruta_desaconsejada_para_osteoporosicos "Quita las frutas desaconsejadas para los que padecen osteoporosis"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Ingrediente <- (object (is-a Fruta))

    (test (and (eq ?a Osteoporosis) (eq ?Ingrediente Cafe) ))
    => (eliminar_ingrediente ?Ingrediente)
)

(defrule procesado::eliminar_dulces_desaconsejados_para_osteoporosicos "Quita los dulces desaconsejados para los que padecen osteoporosis"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Ingrediente <- (object (is-a Dulces))

    (test (and (eq ?a Osteoporosis) (or (eq ?Ingrediente Azucar) (eq ?Ingrediente Churros)) ))
    => (eliminar_ingrediente ?Ingrediente)
)

(defrule procesado::eliminar_nueces_para_los_alergicos "Quita las nueces de la dieta de los alergicos a las nueces"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Ingrediente <- (object (is-a Comida_Proteica))

    (test (and (eq ?a Alergia_Nueces) (eq ?Ingrediente Nuez)) )
    => (eliminar_ingrediente ?Ingrediente)
)


;; Reglas para quitar frutas cuando estas no sean de temporada o no sean buenas en esa temporada
(defrule procesado::eliminar_frutas_de_otras_temporadas_en_invierno "Quita frutas de otras temporadas que no sean invierno"
    (declare (salience 10))
    ?temp <- (object (is-a Temporada))
    ?fruta <- (object (is-a Fruta))
    
    (test (and (eq ?temp Invierno) (or (eq ?fruta Fresa) (eq ?fruta Melocoton) (eq ?fruta Melon) (eq ?fruta Aguacate) )))
    => (eliminar_ingrediente ?fruta)
)

(defrule procesado::eliminar_frutas_de_otras_temporadas_en_primavera "Quita frutas de otras temporadas que no sean primavera"
    (declare (salience 10))
    ?temp <- (object (is-a Temporada))
    ?fruta <- (object (is-a Fruta))
    
    (test (and (eq ?temp Primavera) (or (eq ?fruta Fresa) (eq ?fruta Melocoton) (eq ?fruta Melon))))
    => (eliminar_ingrediente ?fruta)
)

(defrule procesado::eliminar_frutas_de_otras_temporadas_en_verano "Quita frutas de otras temporadas que no sean verano"
    (declare (salience 10))
    ?temp <- (object (is-a Temporada))
    ?fruta <- (object (is-a Fruta))
    
    (test (and (eq ?temp Verano) (or (eq ?fruta Manzana))))
    => (eliminar_ingrediente ?fruta)
)

(defrule procesado::eliminar_frutas_de_otras_temporadas_en_otono "Quita frutas de otras temporadas que no sean verano"
    (declare (salience 10))
    ?temp <- (object (is-a Temporada))
    ?fruta <- (object (is-a Fruta))
    
    (test (and (eq ?temp Otono) (or (eq ?fruta Fresa) (eq ?fruta Melon) )))
    => (eliminar_ingrediente ?fruta)
)

;;Reglas para quitar metodos de cocinar nocivos para diferentes restricciones de enfermedades

(defrule procesado::eliminar_metodos_de_coccion_diabeticos "Quita los metodos de coccion nocivos/desaconsejados para los diabeticos"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Metodo <- (object (is-a Forma_Cocinar))

    (test ( and (eq ?a Diabetes) (eq ?Metodo Frito)))
    => (eliminar_formacocinar)

)

(defrule procesado::eliminar_metodos_de_coccion_osteporosicos "Quita los metodos de coccion nocivos/desaconsejados para los osteoporosicos"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Metodo <- (object (is-a Forma_Cocinar))

    (test ( and (eq ?a Osteoporosis) (eq ?Metodo Frito)))
    => (eliminar_formacocinar)
)

(defrule procesado::eliminar_metodos_de_coccion_hipertensos "Quita los metodos de coccion nocivos/desaconsejados para los hipertensos"
    (declare (salience 10))
    ?a <- (object (is-a Restriccion))
    ?Metodo <- (object (is-a Forma_Cocinar))

    (test ( and (eq ?a Hipertension) (eq ?Metodo Frito)))
    => (eliminar_formacocinar)

)


(defrule procesado::cambio_sintesis "Pasamos de procesado a síntesis cuando ya no hay nada más que descartar"
	(declare (salience -20))
	=>
	(focus sintesis)
)


(deftemplate sintesis::recomendacion
    (slot nombre (type STRING))
    (slot cantidad (type INTEGER) (default 0))
)

(deftemplate sintesis::factibles
    (slot nombre (type STRING))
    (multislot platos_factibles)
)

(defrule sintesis::start
    (declare (salience 30))
    =>
    (assert (recomendacion (nombre "Calorias")) )
    (assert (recomendacion (nombre "Hidratos de Carbono")) )
    (assert (recomendacion (nombre "Grasas")) )
    (assert (recomendacion (nombre "Proteinas")) )
)

(defrule sintesis::platos_factibles
    (declare (salience 20))
    ?Usr <- (object (is-a Usuario))
    =>
    (bind ?Pref (send ?Usr get-tiene-preferencia))

    (bind ?desayun (find-all-instances ((?plat Plato_Desayuno)) (or (eq ?plat:Tipo-dieta ?Pref) (eq ?Pref "No"))))
    (bind ?comida (find-all-instances ((?plat Plato_principal)) (or (eq ?plat:Tipo-dieta ?Pref) (eq ?Pref "No"))))
    (bind ?postre (find-all-instances ((?plat Postre)) (or (eq ?plat:Tipo-dieta ?Pref) (eq ?Pref "No"))))

    (assert (factibles (nombre "Desayuno") (platos_factibles ?desayun)))
    (assert (factibles (nombre "Comidas") (platos_factibles ?comida)))
    (assert (factibles (nombre "Postres") (platos_factibles ?postre)))

    (printout t "PLATOS FACTIBLES" crlf)
    (printout t ?Pref crlf)
    (printout t ?desayun crlf)
    (printout t ?comida crlf)
    (printout t ?postre crlf)
)

(defrule sintesis::tratar_edad_sexo
    (declare (salience 20))
    ?Cal <- (recomendacion (nombre "Calorias")(cantidad ?t))
	?CH <- (recomendacion (nombre "Hidratos de Carbono")(cantidad ?x))
	?Grasa <- (recomendacion (nombre "Grasas") (cantidad ?y))
	?Proteina <- (recomendacion (nombre "Proteinas")(cantidad ?z))
	?usuario <- (object (is-a Usuario))
    =>
	(bind ?sexo (send ?usuario get-Sexo))
    (bind ?edad (send ?usuario get-Edad))
    (bind ?actividad (send ?usuario get-Actividad))
    (if (eq ?sexo 1) then
        (switch ?actividad
		    (case 0 then (bind ?cant 1600))
            (case 1 then (bind ?cant 1800))
            (case 2 then (bind ?cant 2000))
        )      
    else 
        (if (and (>= ?edad 60) (<= ?edad 65)) then 
            (switch ?actividad
                (case 0 then (bind ?cant 2000))
                (case 1 then (bind ?cant 2400))
                (case 2 then (bind ?cant 2600))
            ) 
            else 
                (if (and (>= ?edad 66) (<= ?edad 75)) then
                    (switch ?actividad
                        (case 0 then (bind ?cant 2000))
                        (case 1 then (bind ?cant 2200))
                        (case 2 then (bind ?cant 2600))
                    )   
		        else 
                    (switch ?actividad
                        (case 0 then (bind ?cant 2000))
                        (case 1 then (bind ?cant 2200))
                        (case 2 then (bind ?cant 2400))
                    )
                
                )
        )
    )
    (modify ?Cal (cantidad ?cant))
    (modify ?CH (cantidad (* (/ ?cant 5.5) 0.55)))
    (modify ?Grasa (cantidad (*  (/ ?cant 5.5) 0.3)))
    (modify ?Proteina (cantidad (*  (/ ?cant 5.5) 0.15)))
)


(deffunction sintesis::random_menu (?factibles_desayun ?factibles_plato ?factibles_postre ?i) 
    (bind ?r (random 1 (length$ ?factibles_desayun)))
    (bind ?desayun (create$ (nth$ ?r $?factibles_desayun)))
    (delete$ ?factibles_desayun ?r ?r)
    (if (eq (random 1 2) 2) 
        then (bind ?desayun (insert$ ?desayun (+ (length$ ?desayun) 1) (nth$ (random 1 (length$ ?factibles_desayun)) $?factibles_desayun)))
    )
    
    (bind ?rpl (random 1 (length$ ?factibles_plato)))
    (bind ?rpos (random 1 (length$ ?factibles_postre)))
    (bind ?comida (create$ (nth$ ?rpl ?factibles_plato)))
    (bind ?postreComida  (nth$ ?rpos ?factibles_postre))
    
    (delete$ ?factibles_plato ?rpl ?rpl)
    (delete$ ?factibles_postre ?rpos ?rpos)

    (if (eq (random 1 2) 2) 
        then 
            (bind ?rpl (random 1 (length$ ?factibles_plato)))
            (bind ?comida (insert$ ?comida (+ (length$ ?comida) 1) (nth$ ?rpl $?factibles_plato))) 
            (delete$ ?factibles_plato ?rpl ?rpl)
    )

    (bind ?rpl (random 1 (length$ ?factibles_plato)))
    (bind ?rpos (random 1 (length$ ?factibles_postre)))
    (bind ?platoCena (create$ (nth$ ?rpl ?factibles_plato)))
    (bind ?postreCena (nth$ ?rpos ?factibles_postre))
    (delete$ ?factibles_plato ?rpl ?rpl)
    
    (if (eq (random 1 2) 2) 
        then 
            (bind ?rpl (random 1 (length$ ?factibles_plato)))
            (bind ?platoCena (insert$ ?platoCena (+ (length$ ?platoCena) 1) (nth$ ?rpl $?factibles_plato))) 
            
    )

    (bind ?desayuno (make-instance (gensym*) of Desayuno (compuesto-por-desayuno ?desayun)))
	(bind ?almuerzo (make-instance (gensym*) of Almuerzo (compuesto-por-plato ?comida) (compuesto-por-postre ?postreComida)))
	(bind ?cena (make-instance (gensym*) of Cena (compuesto-por-plato ?platoCena) (compuesto-por-postre ?postreCena)))
	(bind ?menu (make-instance (gensym*) of Menu_diario (compuesto-desayuno ?desayuno) (compuesto-almuerzo ?almuerzo) (compuesto-cena ?cena) (Dia_semana ?i)))

    (return ?menu)
)

(deffunction sintesis::contar_Cal (?menu) 
  (bind ?Cal 0)
  (bind ?desayun (send ?menu get-compuesto-desayuno))
  (bind ?desayun (send ?desayun get-compuesto-por-desayuno))
  (loop-for-count (?i 1 (length$ ?desayun)) 
    (bind ?plat (nth$ ?i ?desayun))
    (bind ?platCal (send ?plat get-Calorias))
    (bind ?Cal (+ ?Cal ?platCal))
  )

  (bind ?comida (send ?menu get-compuesto-almuerzo))
  (bind ?platoComida (send ?comida get-compuesto-por-plato))
  (loop-for-count (?i 1 (length$ ?platoComida)) 
    (bind ?plat (nth$ ?i ?platoComida))
    (bind ?platCal (send ?plat get-Calorias))
    (bind ?Cal (+ ?Cal ?platCal))
  )

  (bind ?postreComida (send ?comida get-compuesto-por-postre))
  (bind ?Cal (+ ?Cal (send ?postreComida get-Calorias)))

  (bind ?cena (send ?menu get-compuesto-cena))
  (bind ?platoCena (send ?cena get-compuesto-por-plato))
  (loop-for-count (?i 1 (length$ ?platoCena)) 
    (bind ?plat (nth$ ?i ?platoCena))
    (bind ?platCal (send ?plat get-Calorias))
    (bind ?Cal (+ ?Cal ?platCal))
  )

  (bind ?postreCena (send ?cena get-compuesto-por-postre))
  (bind ?Cal (+ ?Cal (send ?postreCena get-Calorias)))

  (return ?Cal)
)

(deffunction sintesis::contar_CH (?menu) 
  (bind ?CH 0)
  (bind ?desayun (send ?menu get-compuesto-desayuno))
  (bind ?desayun (send ?desayun get-compuesto-por-desayuno))
  (loop-for-count (?i 1 (length$ ?desayun)) 
    (bind ?plat (nth$ ?i ?desayun))
    (bind ?platCH (send ?plat get-Carbohidratos))
    (bind ?CH (+ ?CH ?platCH))
  )

  (bind ?comida (send ?menu get-compuesto-almuerzo))
  (bind ?platoComida (send ?comida get-compuesto-por-plato))
  (loop-for-count (?i 1 (length$ ?platoComida)) 
    (bind ?plat (nth$ ?i ?platoComida))
    (bind ?platCH (send ?plat get-Carbohidratos))
    (bind ?CH (+ ?CH ?platCH))
  )

  (bind ?postreComida (send ?comida get-compuesto-por-postre))
  (bind ?CH (+ ?CH (send ?postreComida get-Carbohidratos)))

  (bind ?cena (send ?menu get-compuesto-cena))
  (bind ?platoCena (send ?cena get-compuesto-por-plato))
  (loop-for-count (?i 1 (length$ ?platoCena)) 
    (bind ?plat (nth$ ?i ?platoCena))
    (bind ?platCH (send ?plat get-Carbohidratos))
    (bind ?CH (+ ?CH ?platCH))
  )

  (bind ?postreCena (send ?cena get-compuesto-por-postre))
  (bind ?CH (+ ?CH (send ?postreCena get-Carbohidratos)))

  (return ?CH)
)

(deffunction sintesis::contar_Proteina (?menu) 
  (bind ?Proteina 0)
  (bind ?desayun (send ?menu get-compuesto-desayuno))
  (bind ?desayun (send ?desayun get-compuesto-por-desayuno))
  (loop-for-count (?i 1 (length$ ?desayun)) 
    (bind ?plat (nth$ ?i ?desayun))
    (bind ?platProteina (send ?plat get-Proteinas))
    (bind ?Proteina (+ ?Proteina ?platProteina))
  )

  (bind ?comida (send ?menu get-compuesto-almuerzo))
  (bind ?platoComida (send ?comida get-compuesto-por-plato))
  (loop-for-count (?i 1 (length$ ?platoComida)) 
    (bind ?plat (nth$ ?i ?platoComida))
    (bind ?platProteina (send ?plat get-Proteinas))
    (bind ?Proteina (+ ?Proteina ?platProteina))
  )

  (bind ?postreComida (send ?comida get-compuesto-por-postre))
  (bind ?Proteina (+ ?Proteina (send ?postreComida get-Proteinas)))

  (bind ?cena (send ?menu get-compuesto-cena))
  (bind ?platoCena (send ?cena get-compuesto-por-plato))
  (loop-for-count (?i 1 (length$ ?platoCena)) 
    (bind ?plat (nth$ ?i ?platoCena))
    (bind ?platProteina (send ?plat get-Proteinas))
    (bind ?Proteina (+ ?Proteina ?platProteina))
  )

  (bind ?postreCena (send ?cena get-compuesto-por-postre))
  (bind ?Proteina (+ ?Proteina (send ?postreCena get-Proteinas)))

  (return ?Proteina)
)

(deffunction sintesis::contar_Grasa (?menu) 
  (bind ?Grasa 0)
  (bind ?desayun (send ?menu get-compuesto-desayuno))
  (bind ?desayun (send ?desayun get-compuesto-por-desayuno))
  (loop-for-count (?i 1 (length$ ?desayun)) 
    (bind ?plat (nth$ ?i ?desayun))
    (bind ?platGrasa (send ?plat get-Grasas))
    (bind ?Grasa (+ ?Grasa ?platGrasa))
  )

  (bind ?comida (send ?menu get-compuesto-almuerzo))
  (bind ?platoComida (send ?comida get-compuesto-por-plato))
  (loop-for-count (?i 1 (length$ ?platoComida)) 
    (bind ?plat (nth$ ?i ?platoComida))
    (bind ?platGrasa (send ?plat get-Grasas))
    (bind ?Grasa (+ ?Grasa ?platGrasa))
  )

  (bind ?postreComida (send ?comida get-compuesto-por-postre))
  (bind ?Grasa (+ ?Grasa (send ?postreComida get-Grasas)))

  (bind ?cena (send ?menu get-compuesto-cena))
  (bind ?platoCena (send ?cena get-compuesto-por-plato))
  (loop-for-count (?i 1 (length$ ?platoCena)) 
    (bind ?plat (nth$ ?i ?platoCena))
    (bind ?platGrasa (send ?plat get-Grasas))
    (bind ?Grasa (+ ?Grasa ?platGrasa))
  )

  (bind ?postreCena (send ?cena get-compuesto-por-postre))
  (bind ?Grasa (+ ?Grasa (send ?postreCena get-Grasas)))

  (return ?Grasa)
)

(deffunction sintesis::random_diet (?Cal ?CH ?Proteina ?Grasa ?Tol)
	(bind ?menu_list (create$))
	(loop-for-count (?i 1 7) do 
        (bind ?factibles_desayun (find-all-instances ((?plat Plato_Desayuno)) TRUE))
        (bind ?factibles_plato (find-all-instances ((?plat Plato_principal)) TRUE))
        (bind ?factibles_postre (find-all-instances ((?plat Postre)) TRUE)) 

        
		(bind ?men (random_menu ?factibles_desayun ?factibles_plato ?factibles_postre ?i))
        (bind ?menCal (contar_Cal ?men))
        (bind ?menCH (contar_CH ?men))
        (bind ?menProteina (contar_Proteina ?men))
        (bind ?menGrasa (contar_Grasa ?men))
        (while (or  
                (< ?menCH (- ?CH (* ?CH ?Tol))) (> ?menCH (+ ?CH (* ?CH ?Tol)))
                (< ?menProteina (- ?Proteina (* ?Proteina ?Tol))) (> ?menProteina (+ ?Proteina (* ?Proteina ?Tol)))
                (< ?menGrasa (- ?Grasa (* ?Grasa ?Tol))) (> ?menGrasa (+ ?Grasa (* ?Grasa ?Tol))))
           (bind ?men (random_menu ?factibles_desayun ?factibles_plato ?factibles_postre ?i))
           (bind ?menCal (contar_Cal ?men)) 
           (bind ?menCH (contar_CH ?men))
           (bind ?menGrasa (contar_Grasa ?men))
            
        )


        (bind ?menu_list (insert$ ?menu_list (+ (length$ ?menu_list) 1) ?men))
	)
	(bind ?dieta (make-instance (gensym) of Dieta (compuesto-por-menu ?menu_list)))
	(return ?dieta)
)

(deffunction mejorar_desayuno (?factibles_desayun ?men ?CH ?Proteina ?Grasa)
    (bind ?desayun (send ?men get-compuesto-desayuno))
    (bind ?plato_list (send ?desayun get-compuesto-por-desayuno))

    (bind ?menCH (contar_CH ?men))
    (bind ?menProteina (contar_Proteina ?men))
    (bind ?menGrasa (contar_Grasa ?men))
    (bind ?deltaCH 0)
    (bind ?deltaGrasa 0)
    (bind ?deltaProteina 0)
    (if (> ?menCH ?CH) then (bind ?deltaCH (- ?menCH ?CH)) else (bind ?deltaCH (- ?CH ?menCH)))
    (if (> ?menGrasa ?Grasa) then (bind ?deltaGrasa (- ?menGrasa ?Grasa)) else (bind ?deltaGrasa (- ?Grasa ?menGrasa)))
    (if (> ?menProteina ?Proteina) then (bind ?deltaProteina (- ?menProteina ?Proteina)) else (bind ?deltaProteina (- ?Proteina ?menProteina)))
    (bind ?heu (+ (* 0.55 ?deltaCH)(* 0.3 ?deltaGrasa)(* 0.15 ?deltaProteina)))
    (loop-for-count (?i 1 (length$ ?factibles_desayun)) do
    
        (bind ?platDesayun (nth$ ?i ?factibles_desayun))
        (bind ?newCH (send ?platDesayun get-Carbohidratos))
        (bind ?newGrasa (send ?platDesayun get-Grasas))
        (bind ?newProteina (send ?platDesayun get-Proteinas))
            
        (if (neq (length$ ?plato_list) 2) then 
            (bind ?newMenCH (+ ?menCH ?newCH))
            (bind ?newMenGrasa (+ ?menGrasa ?newGrasa))
            (bind ?newMenProteina (+ ?menProteina ?newProteina))

            (if (> ?newMenCH ?CH) then (bind ?newDeltaCH (- ?newMenCH ?CH)) else (bind ?newDeltaCH (- ?CH ?newMenCH)))
            (if (> ?newMenGrasa ?Grasa) then (bind ?newDeltaGrasa (- ?newMenGrasa ?Grasa)) else (bind ?newDeltaGrasa (- ?Grasa ?newMenGrasa)))
            (if (> ?newMenProteina ?Proteina) then (bind ?newDeltaProteina (- ?newMenProteina ?Proteina)) else (bind ?newDeltaProteina (- ?Proteina ?newMenProteina)))
            (bind ?newHeu (+ (* 0.55 ?newDeltaCH)(* 0.3 ?newDeltaGrasa)(* 0.15 ?newDeltaProteina)))

            (if (< ?newHeu ?heu) then 
                (bind ?plato_list (insert$ ?plato_list (+ (length$ ?plato_list) 1) ?platDesayun))
                (bind ?heu ?newHeu)
                (bind ?menCH ?newMenCH)
                (bind ?menProteina ?newMenProteina)
                (bind ?menGrasa ?newMenGrasa)
            )
        )

        (loop-for-count (?j 1 (length$ ?plato_list)) do
            (bind ?OldPlato (nth$ ?j ?plato_list))
            (bind ?oldCH (send ?OldPlato get-Carbohidratos))
            (bind ?oldGrasa (send ?OldPlato get-Grasas))
            (bind ?oldProteina (send ?OldPlato get-Proteinas))

            (bind ?newMenCH (- (+ ?menCH ?newCH) ?oldCH))
            (bind ?newMenGrasa (- (+ ?menGrasa ?newGrasa) ?oldGrasa))
            (bind ?newMenProteina (- (+ ?menProteina ?newProteina) ?oldProteina))


            (if (> ?newMenCH ?CH) then (bind ?newDeltaCH (- ?newMenCH ?CH)) else (bind ?newDeltaCH (- ?CH ?newMenCH)))
            (if (> ?newMenGrasa ?Grasa) then (bind ?newDeltaGrasa (- ?newMenGrasa ?Grasa)) else (bind ?newDeltaGrasa (- ?Grasa ?newMenGrasa)))
            (if (> ?newMenProteina ?Proteina) then (bind ?newDeltaProteina (- ?newMenProteina ?Proteina)) else (bind ?newDeltaProteina (- ?Proteina ?newMenProteina)))
            (bind ?newHeu (+ (* 0.55 ?newDeltaCH)(* 0.3 ?newDeltaGrasa)(* 0.15 ?newDeltaProteina)))

            (if (< ?newHeu ?heu) then 
                (bind ?plato_list (replace$ ?plato_list ?j ?j ?platDesayun)) 
                (bind ?heu ?newHeu)
                (bind ?menCH ?newMenCH)
                (bind ?menProteina ?newMenProteina)
                (bind ?menGrasa ?newMenGrasa)
                
            )
        )
    )
    (return ?men)
)

(deffunction mejorar_platos_principales (?factibles_desayun ?men ?CH ?Proteina ?Grasa)
    (bind ?desayun (send ?men get-compuesto-desayuno))
    (bind ?plato_list (send ?desayun get-compuesto-por-desayuno))

    (bind ?menCH (contar_CH ?men))
    (bind ?menProteina (contar_Proteina ?men))
    (bind ?menGrasa (contar_Grasa ?men))
    (bind ?deltaCH 0)
    (bind ?deltaGrasa 0)
    (bind ?deltaProteina 0)
    (if (> ?menCH ?CH) then (bind ?deltaCH (- ?menCH ?CH)) else (bind ?deltaCH (- ?CH ?menCH)))
    (if (> ?menGrasa ?Grasa) then (bind ?deltaGrasa (- ?menGrasa ?Grasa)) else (bind ?deltaGrasa (- ?Grasa ?menGrasa)))
    (if (> ?menProteina ?Proteina) then (bind ?deltaProteina (- ?menProteina ?Proteina)) else (bind ?deltaProteina (- ?Proteina ?menProteina)))
    (bind ?heu (+ (* 0.55 ?deltaCH)(* 0.3 ?deltaGrasa)(* 0.15 ?deltaProteina)))
    (loop-for-count (?i 1 (length$ ?factibles_desayun)) do
    
        (bind ?platDesayun (nth$ ?i ?factibles_desayun))
        (bind ?newCH (send ?platDesayun get-Carbohidratos))
        (bind ?newGrasa (send ?platDesayun get-Grasas))
        (bind ?newProteina (send ?platDesayun get-Proteinas))
            
        (if (neq (length$ ?plato_list) 2) then 
            (bind ?newMenCH (+ ?menCH ?newCH))
            (bind ?newMenGrasa (+ ?menCH ?newGrasa))
            (bind ?newMenProteina (+ ?menProteina ?newProteina))

            (if (> ?newMenCH ?newCH) then (bind ?newDeltaCH (- ?newMenCH ?newCH)) else (bind ?newDeltaCH (- ?newCH ?newMenCH)))
            (if (> ?newMenGrasa ?newGrasa) then (bind ?newDeltaGrasa (- ?newMenGrasa ?newGrasa)) else (bind ?newDeltaGrasa (- ?newGrasa ?newMenGrasa)))
            (if (> ?newMenProteina ?newProteina) then (bind ?newDeltaProteina (- ?newMenProteina ?newProteina)) else (bind ?newDeltaProteina (- ?newProteina ?newMenProteina)))
            (bind ?newHeu (+ (* 0.55 ?newDeltaCH)(* 0.3 ?newDeltaGrasa)(* 0.15 ?newDeltaProteina)))

            (if (< ?newHeu ?heu) then 
                (bind ?plato_list (insert$ ?plato_list (+ (length$ ?plato_list) 1) ?platDesayun))
                (bind ?heu ?newHeu)
                (bind ?menCH ?newMenCH)
                (bind ?menProteina ?newMenProteina)
                (bind ?menGrasa ?newMenGrasa)
            )
        )

        (loop-for-count (?j 1 (length$ ?plato_list)) do
            (bind ?OldPlato (nth$ ?j ?plato_list))
            (bind ?oldCH (send ?OldPlato get-Carbohidratos))
            (bind ?oldGrasa (send ?OldPlato get-Grasas))
            (bind ?oldProteina (send ?OldPlato get-Proteinas))

            (bind ?newMenCH (- (+ ?menCH ?newCH) ?oldCH))
            (bind ?newMenGrasa (- (+ ?menGrasa ?newGrasa) ?oldGrasa))
            (bind ?newMenProteina (- (+ ?menGrasa ?newGrasa) ?oldGrasa))


            (if (> ?newMenCH ?newCH) then (bind ?newDeltaCH (- ?newMenCH ?newCH)) else (bind ?newDeltaCH (- ?newCH ?newMenCH)))
            (if (> ?newMenGrasa ?newGrasa) then (bind ?newDeltaGrasa (- ?newMenGrasa ?newGrasa)) else (bind ?newDeltaGrasa (- ?newGrasa ?newMenGrasa)))
            (if (> ?newMenProteina ?newProteina) then (bind ?newDeltaProteina (- ?newMenProteina ?newProteina)) else (bind ?newDeltaProteina (- ?newProteina ?newMenProteina)))
            (bind ?newHeu (+ (* 0.55 ?newDeltaCH)(* 0.3 ?newDeltaGrasa)(* 0.15 ?newDeltaProteina)))

            (if (< ?newHeu ?heu) then 
                (bind ?plato_list (replace$ ?plato_list ?j ?j ?platDesayun)) 
                (bind ?heu ?newHeu)
                (bind ?menCH ?newMenCH)
                (bind ?menProteina ?newMenProteina)
                (bind ?menGrasa ?newMenGrasa)
                
            )
        )
    )
    (return ?men)
)

(deffunction correcciones (?CH ?Proteina ?Grasa)
    (bind ?dieta (nth$ 1 (find-instance ((?diet Dieta)) TRUE)))
    (bind ?menu_list (send ?dieta get-compuesto-por-menu))
	(loop-for-count (?i 1 7) do 
        (bind ?factibles_desayun (find-all-instances ((?plat Plato_Desayuno)) TRUE))
        (bind ?factibles_plato (find-all-instances ((?plat Plato_principal)) TRUE))
        (bind ?factibles_postre (find-all-instances ((?plat Postre)) TRUE)) 


		(bind ?men (nth$ ?i ?menu_list))

        (bind ?menCH (contar_CH ?men))
        (bind ?menProteina (contar_Proteina ?men))
        (bind ?menGrasa (contar_Grasa ?men))
        (if (> ?menCH ?CH) then (bind ?deltaCH (- ?menCH ?CH)) else (bind ?deltaCH (- ?CH ?menCH)))
        (if (> ?menGrasa ?Grasa) then (bind ?deltaGrasa (- ?menGrasa ?Grasa)) else (bind ?deltaGrasa (- ?Grasa ?menGrasa)))
        (if (> ?menProteina ?Proteina) then (bind ?deltaProteina (- ?menProteina ?Proteina)) else (bind ?deltaProteina (- ?Proteina ?menProteina)))
        (bind ?heu (+ (* 0.55 ?deltaCH)(* 0.3 ?deltaGrasa)(* 0.15 ?deltaProteina)))

        (bind ?men (mejorar_desayuno ?factibles_desayun ?men ?CH ?Proteina ?Grasa))
        (bind ?menu_list (replace$ ?menu_list ?i ?i ?men))

        (bind ?menCH (contar_CH ?men))
        (bind ?menProteina (contar_Proteina ?men))
        (bind ?menGrasa (contar_Grasa ?men))
        (if (> ?menCH ?CH) then (bind ?deltaCH (- ?menCH ?CH)) else (bind ?deltaCH (- ?CH ?menCH)))
        (if (> ?menGrasa ?Grasa) then (bind ?deltaGrasa (- ?menGrasa ?Grasa)) else (bind ?deltaGrasa (- ?Grasa ?menGrasa)))
        (if (> ?menProteina ?Proteina) then (bind ?deltaProteina (- ?menProteina ?Proteina)) else (bind ?deltaProteina (- ?Proteina ?menProteina)))
        (bind ?newHeu (+ (* 0.55 ?deltaCH)(* 0.3 ?deltaGrasa)(* 0.15 ?deltaProteina)))
        
	)
    
	(bind ?dieta (make-instance (gensym) of Dieta (compuesto-por-menu ?menu_list)))
	(return ?dieta)
)



(defrule sintesis::crear_dieta
    	(declare (salience 5))
	(recomendacion (nombre "Calorias")(cantidad ?Cal))
	(recomendacion (nombre "Hidratos de Carbono")(cantidad ?CH))
	(recomendacion (nombre "Grasas") (cantidad ?Grasa))
	(recomendacion (nombre "Proteinas")(cantidad ?Proteina))
	?usuario <- (object (is-a Usuario))
	=>
	(printout t "Empezamos la creación de la dieta" crlf)
	
	;; Obtenemos los parámetros de nuestro usuario
	;;(bind ?preferencia (send ?usuario get-limitacion))
	(bind ?temporada (send ?usuario get-vive-durante))
    (printout t "NÚMERO DE CALORIAS A TOMAR: " crlf)
    (printout t ?Cal crlf)

    (printout t "NÚMERO DE PROTEINAS A TOMAR: " crlf)
    (printout t ?Proteina crlf)

    (printout t "NÚMERO DE GRASAS A TOMAR: " crlf)
    (printout t ?Grasa crlf)

    (printout t "NÚMERO DE HIDRATOS DE CARBONO A TOMAR: " crlf)
    (printout t ?CH crlf)
    ;; Creamos una lista con los objetivos de la dieta
    ;;(bind $?objetivos (obtener_objetivos ?Cal ?CH ?Grasa ?Proteina))
	
	;; Creamos la dieta
	(bind ?dieta (random_diet ?Cal ?CH ?Proteina ?Grasa 2))
	(printout t ?dieta crlf)
    (bind ?newDieta (correcciones ?CH ?Proteina ?Grasa))
    (send ?dieta delete)
)

(defrule sintesis::cambio_salida "Pasamos de síntesis a output"
	(declare (salience -20))
	=>
	(printout t "Escribiendo la dieta..." crlf)
	(focus salida)
)


(deffunction salida::imprimirDesayuno (?desayuno)
    (printout t (send ?desayuno get-compuesto-por-desayuno) crlf)
)

(deffunction salida::imprimirComida (?comida)
    (printout t "PLATO PRICIPAL" crlf)
    (printout t (send ?comida get-compuesto-por-plato) crlf)
    (printout t "POSTRE" crlf)
    (printout t (send ?comida get-compuesto-por-postre) crlf)
)

(deffunction salida::imprimirMenuDiario (?menuDiario)
    (bind ?dia (send ?menuDiario get-Dia_semana))
    (printout t "DIA DE LA SEMANA: " ?dia crlf)

    ;;DESAYUNO
    (bind ?desayuno (send ?menuDiario get-compuesto-desayuno))
    (printout t "DESAYUNO" crlf)
    (imprimirDesayuno ?desayuno)

    ;;ALMUERZO
    (bind ?almuerzo (send ?menuDiario get-compuesto-almuerzo))
    (printout t "ALMUERZO" crlf)
    (imprimirComida ?almuerzo)

    ;;CENA
    (bind ?cena (send ?menuDiario get-compuesto-cena))
    (printout t "CENA" crlf)
    (imprimirComida ?cena)

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