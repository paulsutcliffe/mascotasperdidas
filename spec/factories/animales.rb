# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :animal do
    nombre {["Perro"].sample}
  end
end
