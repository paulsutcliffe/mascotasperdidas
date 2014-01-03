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

Escenario: Editar noticia
  Dado que existe una noticia
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Noticias"
  Y hago click en "Editar"
  Y lleno "Titulo" con "Vin Diesel recuerda a Paul Walker"
  Y lleno "Contenido" con "A través de su cuenta oficial de Facebook, el actor Vin Diesel publicó una foto en la que aparece junto al desaparecido Paul Walker"
  Cuando presiono "Guardar"
  Entonces debería ver "Noticia editada con éxito"

Escenario: Eliminar noticia
  Dado que existe una noticia
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Noticias"
  Y hago click en "Eliminar"
  Entonces debería ver "La noticia se ah eliminado con éxito"
