require 'factory_girl'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

DatabaseCleaner.clean

FactoryGirl.create :admin

FactoryGirl.create :usuario

12.times do
  FactoryGirl.create :animal
end

12.times do
  FactoryGirl.create :anuncio
end

12.times do
  FactoryGirl.create :ciudad
end

12.times do
  FactoryGirl.create :contacto
end

12.times do
  FactoryGirl.create :distrito
end

12.times do
  FactoryGirl.create :imagen
end

12.times do
  FactoryGirl.create :noticia
end

12.times do
  FactoryGirl.create :plan
end

12.times do
  FactoryGirl.create :portada
end

12.times do
  FactoryGirl.create :provincia
end

12.times do
  FactoryGirl.create :publicacion
end

1.times do
  FactoryGirl.create :raza
end

5.times do
  FactoryGirl.create :slide
end

12.times do
  FactoryGirl.create :testimonio
end

5.times do
  FactoryGirl.create :video
end
