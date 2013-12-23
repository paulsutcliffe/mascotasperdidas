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
      @noticias = Noticia.tagged_with(params[:tag]).page(params[:page])
    else
      @noticias = Noticia.page(params[:page])
    end
  end

  def show
    @noticia = Noticia.find(params[:id])
    @tags = @noticia.tags
  end
end
