#Coding: utf-8
class UsuariosController < InheritedResources::Base
  before_filter :authenticate_admin!
  def update
    if params[:usuario][:password].blank?
      params[:usuario].delete(:password)
      params[:usuario].delete(:password_confirmation)
    end
  end
  def destroy
    destroy!(notice: "El usuario se a eliminado con éxito") { usuarios_path }
  end
end

