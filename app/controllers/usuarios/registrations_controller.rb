class Usuarios::RegistrationsController < Devise::RegistrationsController
  def new
    @usuario = Usuario.new
    super
  end

  # def create
  #   super
  # end
end
