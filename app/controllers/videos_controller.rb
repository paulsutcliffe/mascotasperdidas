#Coding: utf-8
class VideosController < InheritedResources::Base
  before_filter :authenticate_admin!

  def index
    @videos = Video.order("position")
  end

  def new
    @video = Video.new
    @videos = Video.all
    
    if @videos.size < 1
      @video.position = 1
    else
      @video.position = @videos.last.position + 1
    end
  end

  def move
    if ["move_lower", "move_higher", "move_to_top", "move_to_bottom"].include?(params[:method]) and params[:video_id] =~ /^\d+$/
      Video.find(params[:video_id]).send(params[:method])
    end
    redirect_to videos_path
  end

  def create
    create!(notice: "Video creado con éxito") { videos_path }
  end

  def update
    update!(notice: "El video se ha editado con éxito") { videos_path }
  end

  def destroy
    destroy!(notice: "El video se ha eliminado con éxito") { videos_path }
  end
end
