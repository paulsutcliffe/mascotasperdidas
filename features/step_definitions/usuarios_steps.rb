#coding: utf-8
nombre = 'adriel'
email = 'adriel@kosmyka.com'
password = '12345678'
telefono = '98765432'

Dado(/^lleno el formulario con los datos del usuario$/) do
  fill_in "usuario[name]", :with => nombre
  fill_in "E-mail", :with => email
  fill_in "usuario[password]", :with => password
  fill_in "Confirmar Contraseña", :with => password
  fill_in "usuario[telefono]", :with => telefono
end

Dado(/^que existe un usuario$/) do
  Usuario.new(:name => nombre, :email => email, :password => password, :password_confirmation => password, :telefono => telefono).save!
end

Dado(/^que he iniciado sesión como usuario$/) do
  Usuario.new(:name => nombre, :email => email, :password => password, :password_confirmation => password, :telefono => telefono).save!
  visit('/usuarios/ingresar')
  fill_in "E-mail", :with => email
  fill_in "Contraseña", :with => password
  click_button('Ingresar')
end

