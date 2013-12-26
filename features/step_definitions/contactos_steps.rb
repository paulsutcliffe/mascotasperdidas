#coding: utf-8
Dado(/^lleno el formulario de contacto con los datos del mensaje$/) do
  fill_in "Nombre", :with => "adriel"
  fill_in "Teléfono", :with => "12345678"
  fill_in "Email", :with => "adriel@kosmyka.com"
  fill_in "Mensaje", :with => "hola"
end
