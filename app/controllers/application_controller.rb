class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :form_del_footer

  def form_del_footer
    @contacto = Contacto.new
  end

  def bodyid
    @bodyid = params[:controller].parameterize + '-page'
  end

  def bodyclass
    @action = params[:action].parameterize + '-class'

    if params[:controller] == 'inicio'
      @front = 'front'
    else
      @front = 'not-front'
    end


  #  if current_admin
  #    @admin = 'logged-in'
  #  else
  #    @admin = 'not-logged-in'
  #  end

    @bodyclass = @action + ' ' + @front #+ ' ' + @admin

  end

  helper_method :bodyid
  helper_method :bodyclass
end
