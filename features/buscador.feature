#language: es
Característica: Buscador de la web

Esquema del escenario: Busqueda en la web
  Dado que existen varias publicaciones
  Y que estoy en la página inicial
  Y lleno "busqueda" con "<busqueda>"
  Y marco "<tipo>"
  Cuando presiono "BUSCAR"
  Entonces debería ver el resultado "<resultado>"
  Y debería ver el titulo "<titulo>"

  Ejemplos:
      | busqueda      | resultado | titulo                | tipo            |
      | Fido          | Fido      | Resultado de Búsqueda | tipo_Perdido    |
      | Dalmata       | Dalmata   | Resultado de Búsqueda | tipo_Encontrado |
      | Macho         | Macho     | Resultado de Búsqueda | tipo_Perdido    |
      | hola          |           | No se han encontrado mascotas relacionadas | tipo_Perdido    |
      | 2 meses       | 2 meses   | Resultado de Búsqueda | tipo_Encontrado |
