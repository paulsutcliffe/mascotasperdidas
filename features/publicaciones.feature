#language: es
@javascript
Característica: administracion de las publicaciones de la web

Antecedentes:
  Dado que exiten datos pre populados para las publicaciones

Escenario: Crear una publicación
  Dado que he iniciado sesión como usuario
  Y que estoy en la página inicial
  Cuando hago click en "Publicar"
  Y selecciono "Tipo" con "Encontrado"
  Y selecciono "Animal" con "Perro"
  Y selecciono "Raza" con "Boxer"
  Y lleno "publicacion[nombre]" con "Goofy"
  Y lleno "Recompensa" con "1000"
  Y lleno "Descripcion" con "perro grande perdido"
  Y agrego una imagen
  Y lleno "Edad" con "12"
  Y selecciono "Sexo" con "Macho"
  Y presiono "Guardar"
  Y lleno el formulario con la ubicación de donde se perdio el perro
  Y presiono "Guardar"
  Entonces debería ver "Se ha Creado Satisfactoriamente"
