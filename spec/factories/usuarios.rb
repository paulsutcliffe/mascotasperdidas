# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :usuario do
    nombre { Faker::Name.first_name }
    apellido { Faker::Name.last_name }
    dni "47278116"
    telefono { Faker::PhoneNumber.phone_number}
    provincia
    ciudad 
    distrito
    email "email@domain.com"
    password "12345678"
    password_confirmation "12345678"
  end
end
