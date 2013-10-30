# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :plan do
    dias { rand(30) + 1}
    precio { rand(90) + 1}
    descripcion { Faker::Lorem.paragraph}
  end
end
