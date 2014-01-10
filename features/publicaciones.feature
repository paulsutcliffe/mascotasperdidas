#language: es
@javascript
Característica: administracion de las publicaciones de la web

Antecedentes:
  Dado que exiten datos pre populados para las publicaciones

Esquema del escenario: Crear una publicación
  Dado que he iniciado sesión como usuario
  Y que estoy en la página inicial
  Cuando hago click en "Publicar"
  Y selecciono "Tipo" con "<tipo>"
  Y selecciono "Animal" con "<animal>"
  Y selecciono "Raza" con "<raza>"
  Y lleno "publicacion[nombre]" con "<nombre>"
  Y lleno "Recompensa" con "<recompensa>"
  Y lleno "Descripcion" con "<descripcion>"
  Y agrego la imagen "<imagen>"
  Y lleno "Edad" con "<edad>"
  Y selecciono "Sexo" con "<sexo>"
  Y presiono "Guardar"
  Y lleno el formulario con la ubicación de donde se perdio el perro
  Y presiono "Guardar"
  Entonces debería ver "<mensaje>"
  Y debería ver la imagen "<imagen>"

  Ejemplos:
      | tipo       | animal | raza           | nombre   | recompensa | descripcion                 | edad    | imagen     | sexo  | mensaje                              |
      | Perdido    | Perro  | Boxer          | Goofy    | S/.200     | Tiene las orejas sin cortar | 12 años | perro1.jpg | Macho | Se ha Creado Satisfactoriamente      |
      | Encontrado | Perro  | Dogo Argentino |          |            | Tiene un ojo de vidrio      | 2 años  | perro2.jpg | Macho | Se ha Creado Satisfactoriamente      |
      | Perdido    | Perro  | Chow Chow      | Firulais | 50         | Le falta una pata           | 6 años  | perro3.jpg | Macho | Se ha Creado Satisfactoriamente      |


Escenario: Editar una publicación
  Dado que existe una publicación
  Y que he iniciado sesión como usuario
  Y que estoy en la página inicial
  Cuando hago click en "Mis Publicaciones"
  Y hago click en "Editar Publicación"
  Y lleno "publicacion[nombre]" con "fido"
  Y lleno "Recompensa" con "2000"
  Cuando presiono "Guardar"
  Entonces debería ver "La publicación se ha editado con éxito"

Escenario: Editar la dirección de una publicación
  Dado que existe una publicación
  Y que he iniciado sesión como usuario
  Y que estoy en la página inicial
  Cuando hago click en "Mis Publicaciones"
  Y hago click en "Editar Dirección"
  Y lleno "Calle" con "Benavides"
  Y lleno "Referencia" con "Surco"
  Cuando presiono "Guardar"
  Entonces debería ver "La dirección se ha editado con éxito"

Escenario: Eliminar una publicacion
  Dado que he iniciado sesión como usuario
  Y que existe una publicación
  Y que estoy en la página inicial
  Cuando hago click en "Mis Publicaciones"
  Y hago click en "Eliminar"
  Y click accept en la alerta "¿Estás Seguro?"
  Entonces debería ver "La publicación se ha eliminado con éxito"
