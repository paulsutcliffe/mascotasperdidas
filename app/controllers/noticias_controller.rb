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

  def index
    @tags = Noticia.tag_counts_on(:tags)
    if params[:tag]
      @noticias = Noticia.tagged_with(params[:tag])
    else
      @noticias = Noticia.all
    end
  end
end
