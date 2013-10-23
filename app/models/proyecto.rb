class Proyecto < ActiveRecord::Base
  attr_accessible :contenido, :foto, :logo, :nombre
  extend FriendlyId

  friendly_id :nombre, use: :slugged

end
