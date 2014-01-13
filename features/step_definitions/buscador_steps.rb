#Coding: utf-8
Entonces(/^debería ver el resultado "(.*?)"$/) do |valor|
  page.should have_content(valor)
end

Entonces(/^debería ver el titulo "(.*?)"$/) do |titulo|
  page.should have_content(titulo)
end

Dado(/^marco "(.*?)"$/) do |tipo|
  page.choose(tipo)
end

Dado(/^que existen varias publicaciones$/) do
  12.times do
    FactoryGirl.create :imagen
  end
end
