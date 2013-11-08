# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :noticia do
    titulo { Faker::Lorem.sentence}
    contenido { Faker::Lorem.paragraph}
    foto { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','imagen.jpg'))}
    video { 'http://vimeo.com/78058789' }
  end
end
