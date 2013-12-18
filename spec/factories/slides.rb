require 'faker'

FactoryGirl.define do
  factory :slide do
    link { Faker::Internet.url}
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','publicidad.jpg'))}
  end
end
