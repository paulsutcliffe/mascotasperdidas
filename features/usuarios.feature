#language: es

Característica: administracion de los usuarios de la web

Escenario: Registrarse como usuario
  Dado que estoy en la página inicial
  Y hago click en "Regístrate"
  Y lleno el formulario con los datos del usuario
  Cuando presiono "Registrarse"
  Entonces debería ver "¡Bienvenido! Has sido identificado."

Escenario: Ingresar como usuario
  Dado que existe un usuario
  Y que estoy en la página inicial
  Cuando hago click en "Ingresa"
  Y lleno "E-mail" con "adriel@kosmyka.com" 
  Y lleno "Contraseña" con "12345678"
  Cuando presiono "Ingresar"
  Entonces debería ver "Has iniciado sesión."

Escenario: Cerrar sesión del usuario
  Dado que estoy en la página inicial
  Y que he iniciado sesión como usuario
  Cuando hago click en "Cerrar Sesión"
  Entonces debería ver "Has cerrado la sesión."

Escenario: Eliminar usuario
  Dado que existe un usuario
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Usuario"
  Y hago click en "Eliminar"
  Entonces debería ver "El usuario se a eliminado con éxito"



