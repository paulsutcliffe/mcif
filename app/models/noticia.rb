#coding: utf-8
class Noticia < ActiveRecord::Base
  attr_accessible :categoria, :contenido, :destacado, :fecha, :link, :subtitulo, :tipo, :titulo, :subcategoria
  extend FriendlyId

  has_many :charts
  has_many :videos
  has_many :imagenes
  accepts_nested_attributes_for :imagenes, :allow_destroy => true

  scope :clase, ->(subcategoria) { where("subcategoria = ?", subcategoria) }
  scope :noticia, -> { where("categoria = ?", "Noticia") }
  scope :publicacion, -> { where("categoria = ?", "Publicación") }

  TIPOS = ['Boletín', 'Folletos', 'Declaraciones','Videos','Orientación','Reclamaciones']
  CATEGORIAA = ['Noticia', 'Publicación']
  SUBCATEGORIA = ['Mcif', 'Recomendados']

  friendly_id :titulo, use: :slugged
end
