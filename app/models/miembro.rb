class Miembro < ActiveRecord::Base
  attr_accessible :contenido, :email, :fotografia, :linkedin, :nombre, :puesto, :tipo, :profesion, :resumen

  extend FriendlyId

  friendly_id :nombre, use: :slugged

  mount_uploader :fotografia, ImagenUploader

  translates :contenido, :puesto, :profesion, :resumen

  scope :directivos, -> { where(tipo: 'Directorio') }
  scope :expertos, -> { where(tipo: 'Expertos') }

  TIPOS = ['Directorio', 'Expertos']

  default_scope order('nombre ASC')

end
