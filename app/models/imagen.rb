class Imagen < ActiveRecord::Base
  attr_accessible :imagen, :noticia_id

  belongs_to :noticia

  mount_uploader :imagen, ImagenUploader
end
