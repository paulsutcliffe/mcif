class Proyecto < ActiveRecord::Base
  attr_accessible :contenido, :foto, :logo, :nombre
  extend FriendlyId

  friendly_id :nombre, use: :slugged
  mount_uploader :logo, ImagenUploader
  mount_uploader :foto, SlideUploader

end
