#language: es

Característica: envio de mensajes desde la web

Escenario: Enviar mensaje
  Dado que estoy en la página inicial
  Y lleno el formulario de contacto con los datos del mensaje
  Cuando presiono "Enviar"
  Entonces debería ver "Tu mensaje fue enviado con éxito"
  
