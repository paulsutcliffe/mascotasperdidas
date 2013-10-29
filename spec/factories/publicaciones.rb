# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :publicacion do
    tipo "MyString"
    animal "MyString"
    raza "MyString"
    provincia "MyString"
    ciudad "MyString"
    distrito "MyString"
    direccion "MyString"
    referencia "MyText"
    recompensa 1.5
    fecha "2013-10-29"
    descripcion "MyText"
    lat 1.5
    lng 1.5
    portada "MyString"
    edad "MyString"
    sexo "MyString"
  end
end
