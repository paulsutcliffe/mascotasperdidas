class ContactosController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:new,:create]

  def create
    create! do |success, failure|
      success.html do
        Notificador.mensaje_recibido(@contacto).deliver

        flash[:notice] = "Tu mensaje fie eviado con exito"
        redirect_to new_contacto_path
      end
      failure.html do
        flash[:notice] = "No ha sido enciado al mensaje."
        render :accion => "new"
      end
    end
  end
end
