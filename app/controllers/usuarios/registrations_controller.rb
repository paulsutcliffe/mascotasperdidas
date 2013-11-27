class usuarios::registrationsController < Devise::registrationsController
  def new
    @usuario = Usuario.new(:direccion => [Direccion.new])
    super
  end

  # def create
  #   super
  # end
end
