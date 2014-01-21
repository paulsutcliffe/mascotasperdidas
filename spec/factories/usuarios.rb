# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :usuario do
    telefono { Faker::PhoneNumber.phone_number}
    email "email@domain.com"
    password "12345678"
    password_confirmation "12345678"
    name { "kosmyka"}
  end
end
