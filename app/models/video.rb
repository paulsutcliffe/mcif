class Video < ActiveRecord::Base
  attr_accessible :link, :noticia_id

  belongs_to :noticia
  # auto_html_for :link do
  #  youtube(:width => 620, :height => 349)
  #  vimeo(:width => 620, :height => 349)
  # end
end
