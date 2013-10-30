# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :ciudad do
    nombre { Faker::Address.city}
  end
end
