class Historia < ActiveRecord::Base
  attr_accessible :contenido, :subtitulo, :titulo, :foto

  mount_uploader :foto, FotoUploader

  translates :contenido, :subtitulo, :titulo
end
