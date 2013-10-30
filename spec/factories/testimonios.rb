# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :testimonio do
    foto { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','imagen.jpg'))}
    contenido { Faker::Lorem.paragraph}
    nombre { Faker::Name.name}
  end
end
