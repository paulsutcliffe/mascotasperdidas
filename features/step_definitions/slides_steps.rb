Cuando(/^lleno el formulario con los datos del nuevo slide$/) do
  fill_in "Link", :with => "prueba"
  attach_file("Imagen", File.expand_path("features/support/chilidog.jpg"))
end

Dado(/^que existe un slide$/) do
  Slide.create(:link => "pruebas",
               :imagen => File.new("features/support/chilidog.jpg")).save!
end

Cuando(/^uso el link "(.*?)"$/) do |valor|
  fill_in "Link", :with => valor
end
