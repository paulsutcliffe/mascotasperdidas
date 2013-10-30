# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :provincia do
    nombre { Faker::Address.state}
  end
end
