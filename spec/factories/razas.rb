# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :raza do
    nombre {["Bulldog","Doberman","Dalmata"].sample }
  end
end
