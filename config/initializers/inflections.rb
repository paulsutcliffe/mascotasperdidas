# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
  inflect.irregular 'noticia', 'noticias'
  inflect.irregular 'imagen', 'imagenes'
  inflect.irregular 'plan', 'planes'
  inflect.irregular 'animal', 'animales'
  inflect.irregular 'publicacion', 'publicaciones'
  inflect.irregular 'ciudad', 'ciudades'
  inflect.irregular 'provincia', 'provincias'
  inflect.irregular 'direccion', 'direcciones'
  inflect.irregular 'error', 'errores'
#   inflect.uncountable %w( fish sheep )
end
#
# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.acronym 'RESTful'
# end
