#language: es

Característica: administracion de los slides en la web

Escenario: Crear slide
  Dado que estoy en la página inicial
  Y que he iniciado sesión como administrador
  Cuando hago click en "Slide"
  Y hago click en "Crear Slide"
  Y lleno el formulario con los datos del nuevo slide
  Cuando presiono "Guardar"
  Entonces debería ver "Slide creado con éxito"

Escenario: Editar slide
  Dado que existe un slide
  Y que estoy en la página inicial
  Y que he iniciado sesión como administrador
  Cuando hago click en "Slide"
  Y hago click en "Editar"
  Y uso la imagen "peru.jpg"
  Y uso el link "Prueba"
  Cuando presiono "Guardar"
  Entonces debería ver "El slide se ah editado con éxito"

Escenario: Eliminar slide
  Dado que existe un slide
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Slide"
  Y hago click en "Eliminar"
  Entonces debería ver "El slide se ah eliminado con éxito"
