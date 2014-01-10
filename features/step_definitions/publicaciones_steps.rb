#Coding: utf-8

Dado(/^que exiten datos pre populados para las publicaciones$/) do
  Provincia.create(nombre: 'Lima')
  Ciudad.create(nombre: 'Lima', provincia_id: 1)
  Distrito.create(nombre:'Ate Vitarte', codigo_postal: 'Lima 01', ciudad_id: 1)
  Animal.create(nombre: 'Perro')
  Raza.create(nombre: 'Boxer', animal_id: 1)
  Raza.create(nombre: 'Pug', animal_id: 1)
  Raza.create(nombre: 'Dogo Argentino', animal_id: 1)
  Raza.create(nombre: 'Chow Chow', animal_id: 1)
end

Cuando(/^selecciono "(.*?)" con "(.*?)"$/) do |valor, campo|
  select(campo, {:from => valor})
end

Cuando(/^agrego la imagen "(.*?)"$/) do |imagen|
  click_on "Agregar Imagen"

  nested_fields = all('.fields').last.find('.col-sm-8')
  within(nested_fields) do
    find(:xpath, ".//input[@name[contains(.,'publicacion')]]").set(File.expand_path("features/support/#{imagen}"))
  end
end

Cuando(/^lleno el formulario con la ubicación de donde se perdio el perro$/) do
  select('Lima', :from => 'Provincia')
  select('Lima', :from => 'Ciudad')
  select('Ate Vitarte', :from => 'Distrito')
  fill_in "Calle", :with => "Sullana"
  fill_in "Referencia", :with => "Salamanca"
end

Entonces(/^debería ver la imagen "(.*?)"$/) do |imagen|
  page.should have_xpath("//img[contains(@src, \"#{imagen}\")]")
end

Dado(/^que existe una publicación$/) do
  Publicacion.create(animal: "perro",
                     descripcion: "perro grande",
                     edad: "6",
                     fecha: "2013-10-29",
                     nombre: "lulu",
                     raza: "Boxer",
                     recompensa: "700",
                     sexo: "Macho",
                     tipo: "Perdido",
                     status: "Activa",
                     usuario_id: 1).save!
  Direccion.create(ciudad: "Lima",
                   provincia: "Lima",
                   distrito: "Ate Vitarte",
                   calle: "Paracas",
                   referencia: "Salamanca",
                   usuario_id: 1,
                   publicacion_id: 1).save!
  Imagen.create(imagen: File.new("features/support/chilidog.jpg"),
                publicacion_id: 1).save!
end
Cuando(/^click (accept|dismiss) en la alerta "(.*?)"$/) do |action,text|
  alert = page.driver.browser.switch_to.alert
  alert.text.should eq(text)
  alert.send(action)
end

