#coding: utf-8
Dado(/^lleno el formulario de contacto con los datos del mensaje$/) do
  fill_in "Nombre", :with => "adriel"
  fill_in "Teléfono", :with => "12345678"
  fill_in "Email", :with => "adriel@kosmyka.com"
  fill_in "Mensaje", :with => "hola"
end

Dado(/^que existe un mensaje$/) do
  Contacto.create(:nombre => "adriel",
                  :telefono => "876543221",
                  :email => "adriel@kosmyka.com",
                  :mensaje => "hola").save!
end
