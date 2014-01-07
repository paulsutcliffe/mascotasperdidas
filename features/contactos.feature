#language: es

Característica: envio de mensajes desde la web

Escenario: Enviar mensaje
  Dado que estoy en la página inicial
  Y lleno el formulario de contacto con los datos del mensaje
  Cuando presiono "Enviar"
  Entonces debería ver "Tu mensaje fue enviado con éxito"

Escenario: Eliminar mensajes como administrador
  Dado que existe un mensaje
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Mensajes"
  Y hago click en "Eliminar"
  Entonces debería ver "El mensaje se ha eliminado con éxito"

