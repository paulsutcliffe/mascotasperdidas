# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :portada do
     imagen { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','imagen.jpg'))}
  end
end
