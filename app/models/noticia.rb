class Noticia < ActiveRecord::Base
  attr_accessible :contenido, :foto, :titulo, :video, :content, :name, :tag_list

  acts_as_taggable

  extend FriendlyId

  friendly_id :titulo, use: :slugged
  
  mount_uploader :foto, PortadaUploader

  auto_html_for :video do
    vimeo(:width => 620, :height => 349)
  end

end
