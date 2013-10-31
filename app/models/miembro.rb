class Miembro < ActiveRecord::Base
  attr_accessible :contenido, :email, :fotografia, :linkedin, :nombre, :puesto, :tipo

  extend FriendlyId

  friendly_id :nombre, use: :slugged
  mount_uploader :fotografia, ImagenUploader
  scope :directivos, -> { where(tipo: 'Directorio') }
  scope :expertos, -> { where(tipo: 'Expertos') }

end
