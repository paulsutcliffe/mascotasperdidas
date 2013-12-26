#coding: utf-8

email = 'adriel@kosmyka.com'
password = 'chimpance99'

Dado(/^que existe un administrador$/) do
  Admin.new(:email => email, :password => password, :password_confirmation => password).save!
end

Dado(/^que estoy en la página inicial$/) do
  visit('/inicio/index')
end

Cuando(/^visito "(.*?)"$/) do |pagina|
  visit(pagina)
end

Cuando(/^lleno el formulario con los datos del administrador$/) do
  fill_in "E-mail", :with => email
  fill_in "Contraseña", :with => password
end

Cuando(/^presiono "(.*?)"$/) do |boton|
  click_button(boton)
end

Entonces(/^debería ver "(.*?)"$/) do |resultado|
  page.should have_content(resultado)
end
