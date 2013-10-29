# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :noticia do
    titulo "MyString"
    contenido "MyText"
    foto "MyString"
    video "MyString"
  end
end
