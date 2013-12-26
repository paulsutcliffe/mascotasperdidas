#language: es

Característica: administración de las noticias

Escenario: Crear noticia
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Noticias"
  Y hago click en "Crear Noticia"
  Y lleno el formulario con los datos de una nueva noticia
  Cuando presiono "Guardar"
  Entonces debería ver "Noticia creada con éxito"
