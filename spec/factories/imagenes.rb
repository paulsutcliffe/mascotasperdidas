# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :imagen do
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','imagen.jpg'))}
  end
end
