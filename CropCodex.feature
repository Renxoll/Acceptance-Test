@Cropcodex
Feature: Diagnóstico inteligente de cultivos mediante IA
  Scenario: US-CC-01 - Tomar foto del cultivo para diagnóstico inmediato
    Given que el usuario accede a la cámara desde la aplicación
    When toma una foto del cultivo
    Then el sistema analiza la imagen y muestra un diagnóstico sobre plagas o enfermedades

  Scenario: US-CC-02 - Obtener lista de enfermedades detectadas
    Given que el usuario ha enviado una foto del cultivo
    When el sistema detecta posibles enfermedades
    Then se muestra una lista con las opciones identificadas y sus características

  Scenario: US-CC-03 - Ver porcentaje de precisión del diagnóstico
    Given que el sistema genera un resultado de diagnóstico
    When se muestra el resultado
    Then el usuario puede visualizar el porcentaje de precisión del análisis

  Scenario: US-CC-04 - Comparar foto con base de datos
    Given que el diagnóstico muestra una enfermedad posible
    When el usuario selecciona la opción de comparar
    Then el sistema muestra imágenes de referencia de la base de datos

  Scenario: US-CC-05 - Recibir alerta de diagnóstico incierto
    Given que el análisis no logra determinar con certeza la enfermedad
    When el nivel de confianza es bajo
    Then se envía una alerta al usuario recomendando contactar a un experto

  Scenario: US-CC-06 - Registrar parcelas con nombre, ubicación y cultivo
    Given que el usuario desea organizar sus cultivos
    When registra una nueva parcela
    Then el sistema almacena el nombre, ubicación y tipo de cultivo

  Scenario: US-CC-07 - Agregar múltiples cultivos al perfil
    Given que el usuario gestiona más de un campo
    When agrega un nuevo cultivo
    Then puede administrarlo dentro del mismo perfil

  Scenario: US-CC-08 - Ver historial de diagnósticos
    Given que el usuario ha realizado varios análisis
    When accede al historial
    Then el sistema muestra los diagnósticos anteriores por cada cultivo

  Scenario: US-CC-09 - Exportar historial en PDF o Excel
    Given que el usuario desea guardar sus resultados
    When selecciona exportar historial
    Then el sistema genera un archivo en formato PDF o Excel

  Scenario: US-CC-10 - Recibir notificaciones de problemas recurrentes
    Given que un cultivo presenta plagas frecuentes
    When el sistema detecta repetición de diagnósticos similares
    Then se envía una notificación al usuario

  Scenario: US-CC-11 - Recibir recomendaciones de tratamiento
    Given que se detecta una enfermedad
    When el sistema genera el diagnóstico
    Then se muestran recomendaciones prácticas para su tratamiento

  Scenario: US-CC-12 - Recibir consejos de prevención
    Given que el usuario recibe un diagnóstico
    When revisa la información adicional
    Then el sistema muestra consejos preventivos para evitar recurrencias

  Scenario: US-CC-13 - Diferenciar entre tratamientos químicos y naturales
    Given que el sistema sugiere tratamientos
    When el usuario revisa las opciones
    Then se presentan clasificados por tipo químico o natural

  Scenario: US-CC-14 - Conocer el costo estimado de tratamientos
    Given que el usuario recibe sugerencias de tratamiento
    When el sistema tiene información de costos
    Then muestra el precio estimado por cada opción

  Scenario: US-CC-15 - Recomendaciones adaptadas por región
    Given que el usuario ha configurado su ubicación
    When el sistema ofrece sugerencias
    Then se adaptan según el clima y la región del cultivo

  Scenario: US-CC-16 - Usar la app sin conexión
    Given que el usuario no tiene internet
    When intenta acceder al historial o análisis previos
    Then el sistema permite usar la app en modo offline

  Scenario: US-CC-17 - Sincronización automática con internet
    Given que el usuario vuelve a tener conexión
    When hay datos pendientes por sincronizar
    Then el sistema los actualiza automáticamente en la nube

  Scenario: US-CC-18 - Usar lenguaje sencillo
    Given que el usuario revisa los resultados
    When se muestra el diagnóstico
    Then el lenguaje es claro y sin tecnicismos

  Scenario: US-CC-19 - Cambiar idioma de la app
    Given que el usuario desea personalizar el idioma
    When accede a configuración
    Then puede elegir entre español, inglés o quechua

  Scenario: US-CC-20 - Compatibilidad con celulares de gama baja
    Given que el usuario tiene un dispositivo limitado
    When instala la aplicación
    Then el sistema garantiza su funcionamiento en equipos con baja capacidad

  Scenario: US-CC-21 - Compartir fotos en comunidad agrícola
    Given que el usuario detecta un problema en su cultivo
    When decide compartirlo
    Then puede publicar la foto y recibir comentarios de otros agricultores

  Scenario: US-CC-22 - Responder preguntas de otros agricultores
    Given que el usuario participa en la comunidad
    When otro usuario hace una consulta
    Then puede responder y compartir su experiencia

  Scenario: US-CC-23 - Marcar respuesta como útil
    Given que el usuario recibe varias respuestas
    When selecciona la mejor
    Then puede marcarla como útil

  Scenario: US-CC-24 - Recibir alertas de plagas comunes en su zona
    Given que el sistema detecta reportes cercanos
    When una plaga afecta cultivos similares
    Then se envía una alerta al usuario

  Scenario: US-CC-25 - Seguir a expertos agrícolas
    Given que el usuario encuentra expertos relevantes
    When los sigue
    Then puede ver sus publicaciones y consejos

  Scenario: US-CC-26 - Contactar a un experto por chat
    Given que el usuario tiene dudas sobre un diagnóstico
    When abre el chat de soporte
    Then puede comunicarse directamente con un experto

  Scenario: US-CC-27 - Enviar fotos y notas a expertos
    Given que el usuario necesita asesoría
    When envía su consulta
    Then puede adjuntar imágenes y notas adicionales

  Scenario: US-CC-28 - Recibir recomendaciones personalizadas del experto
    Given que el experto analiza la información enviada
    When responde al usuario
    Then ofrece soluciones adaptadas a su situación

  Scenario: US-CC-29 - Calificar la atención de expertos
    Given que el usuario recibe asesoría
    When finaliza la conversación
    Then puede calificar la calidad del servicio

  Scenario: US-CC-30 - Pagar por consultas premium
    Given que el usuario desea acceder a atención prioritaria
    When selecciona un plan premium
    Then puede realizar el pago dentro de la aplicación

  Scenario: US-CC-31 - Registrar perfil de usuario
    Given que el usuario abre la app por primera vez
    When completa el formulario de registro
    Then puede acceder a todas las funciones disponibles

  Scenario: US-CC-32 - Actualizar datos personales
    Given que el usuario tiene datos desactualizados
    When modifica su información
    Then el sistema guarda los cambios correctamente

  Scenario: US-CC-33 - Subir foto de perfil
    Given que el usuario desea personalizar su cuenta
    When selecciona una imagen
    Then el sistema la guarda como foto de perfil

  Scenario: US-CC-34 - Configurar notificaciones
    Given que el usuario no desea recibir todas las alertas
    When ajusta sus preferencias
    Then el sistema solo envía las seleccionadas

  Scenario: US-CC-35 - Eliminar cuenta y datos
    Given que el usuario desea dejar de usar la app
    When selecciona eliminar cuenta
    Then todos sus datos son borrados permanentemente

  Scenario: US-CC-36 - Cifrar datos personales
    Given que el sistema maneja información sensible
    When almacena los datos
    Then estos se guardan cifrados para mayor seguridad

  Scenario: US-CC-37 - Diagnóstico en menos de 5 segundos
    Given que el usuario toma una foto del cultivo
    When el sistema procesa la imagen
    Then el resultado se muestra en menos de 5 segundos

  Scenario: US-CC-38 - Soporte para usuarios concurrentes
    Given que múltiples usuarios acceden a la app
    When hay alta demanda
    Then el sistema soporta hasta 10 000 usuarios simultáneamente

  Scenario: US-CC-39 - Interfaz clara y accesible
    Given que el usuario interactúa con la app
    When navega por las pantallas
    Then la interfaz es intuitiva y de fácil uso

  Scenario: US-CC-40 - Compatibilidad multiplataforma
    Given que el usuario tiene distintos dispositivos
    When instala la app en Android o iOS
    Then la aplicación funciona correctamente en ambos sistemas
    
