#Coding: utf-8
Cuando(/^lleno el formulario con los datos del testimonio$/) do
  attach_file("Foto", File.expand_path("features/support/chilidog.jpg"))
  fill_in "Contenido", :with => "Iusto vitae laudantium accusamus sapiente. Eum id vel. Recusandae ea autem aut corrupti repudiandae. Nemo sequi consectetur est aut ut tempora consequuntur. Consequatur expedita nemo explicabo incidunt reiciendis illo exercitationem."
  fill_in "testimonio[nombre]", :with => "Roman Kris"
end

Dado(/^que existe un testimonio$/) do
  Testimonio.create(:foto =>File.new("features/support/chilidog.jpg"),
                    :nombre => "Iusto vitae",
                    :contenido => "Iusto vitae laudantium accusamus sapiente.")
end

Cuando(/^uso la foto "(.*?)"$/) do |archivo|
  attach_file("Foto", File.expand_path("features/support/" + archivo))
end

Cuando(/^uso el contenido "(.*?)"$/) do |valor|
  fill_in "testimonio[nombre]", :with => valor
end

Cuando(/^uso el nombre "(.*?)"$/) do |valor|
  fill_in "Contenido", :with => valor
end
