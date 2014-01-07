#Coding: utf-8

Dado(/^que exiten datos pre populados para las publicaciones$/) do
  Provincia.create(nombre: 'Lima')
  Ciudad.create(nombre: 'Lima', provincia_id: 1)
  Distrito.create(nombre:'Ate Vitarte', codigo_postal: 'Lima 01', ciudad_id: 1)
  Animal.create(nombre: 'Perro')
  Raza.create(nombre: 'Boxer', animal_id: 1)
end

Cuando(/^selecciono "(.*?)" con "(.*?)"$/) do |valor, campo|
  select(campo, {:from => valor})
end

Cuando(/^agrego una imagen$/) do
  click_on "Agregar Imagen"

  last_nested_fields = all('.nested-field').last

  within(last_nested_fields) do
    attach_file("Imagen", File.expand_path("features/support/chilidog.jpg"))
  end
end

Cuando(/^lleno el formulario con la ubicación de donde se perdio el perro$/) do
  select('Lima', :from => 'Provincia')
  select('Lima', :from => 'Ciudad')
  select('Ate Vitarte', :from => 'Distrito')
  fill_in "Calle", :with => "Sullana"
  fill_in "Referencia", :with => "Salamanca"
end
