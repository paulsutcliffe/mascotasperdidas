#language: es
Característica: administración de los contenidos de la web

Escenario: Ingresar como administrador
  Dado que existe un administrador
  Y que estoy en la página inicial
  Cuando visito "/cms/ingresar"
  Y lleno el formulario con los datos del administrador
  Cuando presiono "Ingresar"
  Entonces debería ver "Has iniciado sesión."

Escenario: Cerrar sesión del administrador
  Dado que estoy en la página inicial
  Y que he iniciado sesión como administrador
  Cuando hago click en "Cerrar Sesión"
  Entonces debería ver "Has cerrado la sesión."
