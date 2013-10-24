class Miembro < ActiveRecord::Base
  attr_accessible :contenido, :email, :fotografia, :linkedin, :nombre, :puesto, :tipo

  extend FriendlyId

  friendly_id :nombre, use: :slugged
  mount_uploader :fotografia, FotografiaUploader
end
