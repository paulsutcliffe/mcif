class Noticia < ActiveRecord::Base
  attr_accessible :categoria, :contenido, :destacado, :fecha, :link, :subtitulo, :tipo, :titulo
  extend FriendlyId

  has_many :charts
  has_many :videos
  has_many :imagenes

  friendly_id :titulo, use: :slugged
end
