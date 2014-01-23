class Asociado < ActiveRecord::Base
  attr_accessible :imagen, :link, :descripcion

  mount_uploader :imagen, ImagenUploader

  translates :descripcion

  acts_as_list
end
