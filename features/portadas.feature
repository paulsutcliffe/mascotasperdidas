#language: es

Característica: administración de las portadas

Escenario: Crear portada
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Portadas"
  Y hago click en "Crear Portada"
  Y lleno el formulario con los datos de la nueva portada
  Cuando presiono "Guardar"
  Entonces debería ver "Portada creada con éxito"

Escenario: Editar portada
  Dado que existe una portada
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Portadas"
  Y hago click en "Editar"
  Y uso la imagen "peru.jpg"
  Cuando presiono "Guardar"
  Entonces debería ver "La portada se ha editado con éxito"

Escenario: Eliminar portada
  Dado que existe una portada
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Portadas"
  Y hago click en "Eliminar"
  Entonces debería ver "La portada se ha eliminado con éxito"

