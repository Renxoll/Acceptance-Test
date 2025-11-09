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
