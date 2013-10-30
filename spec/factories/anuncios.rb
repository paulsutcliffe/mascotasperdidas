# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :anuncio do
    link { Faker::Internet.url}
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','imagen.jpg'))}
  end
end
