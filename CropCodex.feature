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
