class Video < ActiveRecord::Base
  attr_accessible :link
  auto_html_for :link do
    vimeo(:width => 940, :height => 400)
  end
  acts_as_list
end
