class Tagging < ActiveRecord::Base
  belongs_to :tag
  belongs_to :noticia
  # attr_accessible :title, :body
end
