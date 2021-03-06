#coding: utf-8
class ContactosController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:new, :create]

  def create
    create! do |success, failure|
      success.html do
        Notificador.mensaje_recibido(@contacto).deliver

        flash[:notice] = "Tu mensaje fue enviado con éxito"
        redirect_to new_contacto_path
      end
      failure.html do
        flash[:notice] = "No ha sido enviado al mensaje."
        render :accion => "new"
      end
    end
  end

  def destroy
    @contacto = Contacto.find(params[:id])
    @contacto.destroy
    flash[:notice] = "Mensaje borrado con éxito."
    redirect_to contactos_path
  end
end
