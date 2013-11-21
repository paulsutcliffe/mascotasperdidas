class PublicacionesController < InheritedResources::Base
  before_filter :authenticate_usuario!, :except => [:index, :show]
end
