#coding: utf-8
class Noticia < ActiveRecord::Base
  attr_accessible :categoria, :contenido, :destacado, :fecha, :link, :subtitulo, :tipo, :titulo
  extend FriendlyId

  has_many :charts
  has_many :videos
  has_many :imagenes

  TIPOS = ['Boletín', 'Folletos', 'Declaraciones','Videos','Orientación','Reclamaciones']

  friendly_id :titulo, use: :slugged
end
