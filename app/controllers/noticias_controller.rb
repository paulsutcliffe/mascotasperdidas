class NoticiasController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:index, :show]
  
  def create
    create! { noticias_path }
  end

  def update
    update! { noticias_path }
  end

  def destroy
    destroy! { noticias_path }
  end
end
