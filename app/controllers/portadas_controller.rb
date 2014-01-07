#coding: utf-8
class PortadasController < InheritedResources::Base
  before_filter :authenticate_admin!
  def create
    create!(notice: 'Portada creada con éxito') { portadas_path }
  end

  def update
    update!(notice: 'La portada se ha editado con éxito') { portadas_path }
  end

  def destroy
    destroy!(notice: 'La portada se ha eliminado con éxito') { portadas_path }
  end

end
