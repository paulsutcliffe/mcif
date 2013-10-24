class Imagen < ActiveRecord::Base
  attr_accessible :imagen, :noticia_id
  mount_uploader :imagen, ImagenUploader
end
