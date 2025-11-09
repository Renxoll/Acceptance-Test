@Cropcodex
Feature: Diagnóstico inteligente de cultivos mediante IA

  Scenario Outline: US-CC-01 - Tomar foto del cultivo para diagnóstico inmediato
    Given que el usuario accede a la cámara desde la aplicación
    When toma una foto del cultivo "<tipoCultivo>"
    Then el sistema analiza la imagen y muestra un diagnóstico sobre plagas o enfermedades

    Examples:
      | tipoCultivo |
      | Tomate      |
      | Maíz        |
      | Papa        |

  Scenario Outline: US-CC-02 - Obtener lista de enfermedades detectadas
    Given que el usuario ha enviado una foto del cultivo "<tipoCultivo>"
    When el sistema detecta posibles enfermedades
    Then se muestra una lista con las opciones identificadas y sus características

    Examples:
      | tipoCultivo |
      | Tomate      |
      | Lechuga     |

  Scenario Outline: US-CC-03 - Ver porcentaje de precisión del diagnóstico
    Given que el sistema genera un resultado de diagnóstico
    When se muestra el resultado para "<tipoCultivo>"
    Then el usuario puede visualizar el porcentaje de precisión "<precision>%"

    Examples:
      | tipoCultivo | precision |
      | Tomate      | 95        |
      | Maíz        | 88        |
  
  Scenario Outline: US-CC-04 - Comparar foto con base de datos
    Given que el diagnóstico muestra una enfermedad posible "<enfermedad>"
    When el usuario selecciona la opción de comparar
    Then el sistema muestra imágenes de referencia de la base de datos

    Examples:
      | enfermedad        |
      | Tizón tardío      |
      | Roya del maíz     |

  Scenario Outline: US-CC-05 - Recibir alerta de diagnóstico incierto
    Given que el análisis no logra determinar con certeza la enfermedad
    When el nivel de confianza es "<nivelConfianza>"
    Then se envía una alerta al usuario recomendando contactar a un experto

    Examples:
      | nivelConfianza |
      | 45%            |
      | 30%            |
  
    Scenario Outline: US-CC-06 - Registrar parcelas con nombre, ubicación y cultivo
    Given que el usuario desea organizar sus cultivos
    When registra una nueva parcela llamada "<nombreParcela>" en "<ubicacion>" con cultivo "<cultivo>"
    Then el sistema almacena la información correctamente

    Examples:
      | nombreParcela | ubicacion       | cultivo  |
      | Parcela Norte | Cajamarca       | Papa     |
      | Fundo Sur     | Junín           | Maíz     |

    Scenario Outline: US-CC-07 - Agregar múltiples cultivos al perfil
    Given que el usuario gestiona más de un campo
    When agrega un nuevo cultivo "<cultivo>"
    Then puede administrarlo dentro del mismo perfil

    Examples:
      | cultivo  |
      | Café     |
      | Palta    |
  
  
  
  
