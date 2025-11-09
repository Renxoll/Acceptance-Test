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
  
    Scenario Outline: US-CC-08 - Ver historial de diagnósticos
    Given que el usuario ha realizado varios análisis
    When accede al historial del cultivo "<cultivo>"
    Then el sistema muestra los diagnósticos anteriores

    Examples:
      | cultivo |
      | Papa    |
      | Maíz    |

  Scenario Outline: US-CC-09 - Exportar historial en PDF o Excel
    Given que el usuario desea guardar sus resultados
    When selecciona exportar historial en formato "<formato>"
    Then el sistema genera un archivo correctamente

    Examples:
      | formato |
      | PDF     |
      | Excel   |

  Scenario Outline: US-CC-10 - Recibir notificaciones de problemas recurrentes
    Given que un cultivo presenta plagas frecuentes
    When el sistema detecta repetición de diagnósticos similares en "<cultivo>"
    Then se envía una notificación al usuario

    Examples:
      | cultivo |
      | Tomate  |
      | Papa    |
  
 Scenario Outline: US-CC-11 - Recibir recomendaciones de tratamiento
    Given que se detecta una enfermedad "<enfermedad>"
    When el sistema genera el diagnóstico
    Then se muestran recomendaciones prácticas para su tratamiento

    Examples:
      | enfermedad        |
      | Mildiu polvoso    |
      | Roya del trigo    |

  Scenario Outline: US-CC-12 - Recibir consejos de prevención
    Given que el usuario recibe un diagnóstico de "<enfermedad>"
    When revisa la información adicional
    Then el sistema muestra consejos preventivos

    Examples:
      | enfermedad        |
      | Tizón temprano    |
      | Mancha bacteriana |

  Scenario Outline: US-CC-13 - Diferenciar entre tratamientos químicos y naturales
    Given que el sistema sugiere tratamientos
    When el usuario revisa las opciones
    Then se presentan clasificados por tipo "<tipoTratamiento>"

    Examples:
      | tipoTratamiento |
      | Químico         |
      | Natural         |

  Scenario Outline: US-CC-14 - Conocer el costo estimado de tratamientos
    Given que el usuario recibe sugerencias de tratamiento "<tratamiento>"
    When el sistema tiene información de costos
    Then muestra el precio estimado "<costo>"

    Examples:
      | tratamiento       | costo  |
      | Fungicida A       | 25.00  |
      | Extracto Natural  | 12.50  |

  Scenario Outline: US-CC-15 - Recomendaciones adaptadas por región
    Given que el usuario ha configurado su ubicación "<region>"
    When el sistema ofrece sugerencias
    Then se adaptan según el clima y la región del cultivo

    Examples:
      | region       |
      | Cusco        |
      | Piura        |

  Scenario Outline: US-CC-16 - Usar la app sin conexión
    Given que el usuario no tiene internet
    When intenta acceder al historial o análisis previos
    Then el sistema permite usar la app en modo "<modo>"

    Examples:
      | modo     |
      | Offline  |
  
  Scenario Outline: US-CC-17 - Sincronización automática con internet
    Given que el usuario vuelve a tener conexión
    When hay datos pendientes por sincronizar
    Then el sistema los actualiza automáticamente en la nube "<estado>"

    Examples:
      | estado   |
      | Completado |
      | Fallido     |

  Scenario Outline: US-CC-18 - Usar lenguaje sencillo
    Given que el usuario revisa los resultados
    When se muestra el diagnóstico
    Then el lenguaje es claro y sin tecnicismos "<nivelLenguaje>"

    Examples:
      | nivelLenguaje |
      | Básico        |
      | Intermedio    |

  Scenario Outline: US-CC-19 - Cambiar idioma de la app
    Given que el usuario desea personalizar el idioma
    When accede a configuración
    Then puede elegir entre "<idioma>"

    Examples:
      | idioma  |
      | Español |
      | Inglés  |
      | Quechua |

 Scenario Outline: US-CC-20 - Compatibilidad con celulares de gama baja
    Given que el usuario tiene un dispositivo "<modelo>"
    When instala la aplicación
    Then el sistema garantiza su funcionamiento

    Examples:
      | modelo      |
      | Moto E7     |
      | Galaxy A01  |

  Scenario Outline: US-CC-21 - Compartir fotos en comunidad agrícola
    Given que el usuario detecta un problema en su cultivo "<cultivo>"
    When decide compartirlo
    Then puede publicar la foto y recibir comentarios

    Examples:
      | cultivo |
      | Maíz    |
      | Papa    |

  Scenario Outline: US-CC-22 - Responder preguntas de otros agricultores
    Given que el usuario participa en la comunidad
    When otro usuario hace una consulta sobre "<tema>"
    Then puede responder y compartir su experiencia

    Examples:
      | tema          |
      | Plagas        |
      | Riego         |

  Scenario Outline: US-CC-23 - Marcar respuesta como útil
    Given que el usuario recibe varias respuestas
    When selecciona la mejor respuesta de "<usuario>"
    Then puede marcarla como útil

    Examples:
      | usuario   |
      | @PedroAgro |
      | @MariaField |