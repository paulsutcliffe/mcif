class Asociado < ActiveRecord::Base
  attr_accessible :imagen, :link, :descripcion

  mount_uploader :imagen, ImagenUploader
end
