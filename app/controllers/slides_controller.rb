#Coding: utf-8
class SlidesController < InheritedResources::Base
  before_filter :authenticate_admin!
  def create
    create!(notice: 'Slide creado con éxito') { slides_path }
  end

  def update
    update!(notice: 'El slide se ha editado con éxito') { slides_path }
  end

  def destroy
    destroy!(notice: 'El slide se ha eliminado con éxito') { slides_path }
  end
end
