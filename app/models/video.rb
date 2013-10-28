class Video < ActiveRecord::Base
  attr_accessible :link, :noticia_id

  belongs_to :noticia
end
