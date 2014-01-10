#language: es
@javascript
Característica: Buscador de la web

Esquema del escenario: Busqueda en la web
  Dado que existe una publicación
  Y que estoy en la página inicial
  Y lleno "busqueda" con "<busqueda>"
  Cuando presiono "BUSCAR"
  Entonces debería ver el resultado "<resultado>"
  Y debería ver el titulo "<titulo>"

  Ejemplos:
      | busqueda                             | resultado | titulo                |
      | lulu                                 | LULU      | Resultado de Búsqueda |
      | Boxer                                | BOXER     | Resultado de Búsqueda |
      | Macho                                | MACHO     | Resultado de Búsqueda |
      |                                      |           | Resultado de Búsqueda |
      | perro grande color negro ojos grandes| BOXER     | Resultado de Búsqueda |
