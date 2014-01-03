#coding: utf-8
Cuando(/^lleno el formulario con los datos de la nueva portada$/) do
  attach_file("Imagen", File.expand_path("features/support/chilidog.jpg"))
end

Dado(/^que existe una portada$/) do
  Portada.create(:imagen => File.new("features/support/chilidog.jpg")).save!
end

Cuando(/^uso la imagen "(.*?)"$/) do |archivo|
  attach_file("Imagen", File.expand_path("features/support/" + archivo))
end
