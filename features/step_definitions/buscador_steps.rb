#Coding: utf-8
Entonces(/^debería ver el resultado "(.*?)"$/) do |valor|
  page.should have_content(valor)
end

Entonces(/^debería ver el titulo "(.*?)"$/) do |titulo|
  page.should have_content(titulo)
end
