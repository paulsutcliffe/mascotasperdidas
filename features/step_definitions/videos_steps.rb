Cuando(/^lleno el formulario$/) do
  fill_in "Link", :with => "http://vimeo.com/51283882"
end

Dado(/^que existe un video$/) do
  Video.create(:link => "http://vimeo.com/51283882").save!
end
