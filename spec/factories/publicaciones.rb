#coding: utf-8
# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :publicacion do
    tipo { ["Perdido", "Encontrado"].sample }
    animal "Perro"
    raza "Dalmata"
    nombre { ["Fido", "Bobby", "lucky"].sample }
    recompensa 0
    fecha "2013-10-29"
    descripcion { Faker::Lorem.paragraph }
    portada { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','imagen.jpg'))}
    edad { ["2 meses", "3 años"].sample }
    sexo { ["Macho", "Hembra"].sample }
    lat { Faker::Address.latitude }
    lng { Faker::Address.longitude }
  end
end
