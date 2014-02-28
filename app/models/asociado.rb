class Asociado < ActiveRecord::Base
  attr_accessible :slug, :nombre, :imagen, :link, :descripcion

  mount_uploader :imagen, ImagenUploader

  translates :descripcion

  #default_scope order('nombre ASC')

  #friendly_id :nombre, use: :slugged

  acts_as_list
end
