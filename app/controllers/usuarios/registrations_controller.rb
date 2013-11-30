class Usuarios::RegistrationsController < Devise::RegistrationsController
  def new
    @usuario = Usuario.new(:direccion => [Direccion.new])
    super
  end

  # def create
  #   super
  # end
end
