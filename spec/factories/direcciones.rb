# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :direccion do
    provincia "Lima"
    ciudad "Lima"
    distrito "Ate Vitarte"
    calle "Sullana 275"
    referencia "A la altura de la cuadra 6 de los quechuas"
    publicacion
  end
end
