#language: es

Característica: administración de los testimonios

Escenario: Crear testimonio
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Testimonios"
  Y hago click en "Crear Testimonio"
  Y lleno el formulario con los datos del testimonio
  Cuando presiono "Guardar"
  Entonces debería ver "Testimonio creado con éxito"

Escenario: Editar testimonio
  Dado que existe un testimonio
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Testimonios"
  Y hago click en "Editar"
  Y uso la foto "peru.jpg"
  Y uso el contenido "Impedit harum laudantium doloribus autem eius. Qui non incidunt repudiandae omnis tempore. Est dolor inventore laudantium."
  Y uso el nombre "Bella Heathcote"
  Cuando presiono "Guardar"
  Entonces debería ver "El testimonio se ah editado con éxito"

Escenario: Eliminar testimonio
  Dado que existe un testimonio
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Testimonios"
  Y hago click en "Eliminar"
  Entonces debería ver "El testimonio se ah eliminado con éxito"


