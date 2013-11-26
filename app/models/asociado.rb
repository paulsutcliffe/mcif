class Asociado < ActiveRecord::Base
  attr_accessible :imagen, :link

  mount_uploader :imagen, ImagenUploader
end
