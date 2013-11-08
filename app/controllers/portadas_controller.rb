class PortadasController < InheritedResources::Base
  before_filter :authenticate_admin!
  def create
    create! { portadas_path }
  end
  def update
    update! { portadas_path }
  end
  def destroy
    destroy! { portadas_path}
  end

end
