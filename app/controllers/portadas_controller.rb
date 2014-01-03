#coding: utf-8
class PortadasController < InheritedResources::Base
  before_filter :authenticate_admin!
  def create
    create!(notice: 'Portada creada con éxito') { portadas_path }
  end

  def update
    update!(notice: 'La portada se ah editado con éxito') { portadas_path }
  end

  def destroy
    destroy!(notice: 'La portada se ah eliminado con éxito') { portadas_path }
  end

end
