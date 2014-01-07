#Coding: utf-8
class TestimoniosController < InheritedResources::Base
  before_filter :authenticate_admin!

  def create
    create!(notice: "Testimonio creado con éxito") { testimonios_path }
  end
  def update
    update!(notice: "El testimonio se ha editado con éxito") { testimonios_path }
  end
  def destroy
    destroy!(notice: "El testimonio se ha eliminado con éxito") { testimonios_path }
  end

end
