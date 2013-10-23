class Noticia < ActiveRecord::Base
  attr_accessible :categoria, :contenido, :destacado, :fecha, :link, :subtitulo, :tipo, :titulo
  extend FriendlyId

  friendly_id :tiulo, use: :slugged
end
