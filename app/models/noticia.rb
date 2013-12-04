#coding: utf-8
class Noticia < ActiveRecord::Base
  attr_accessible :categoria, :contenido, :destacado, :fecha, :link, :subtitulo, :tipo, :titulo, :subcategoria, :imagenes_attributes, :videos_attributes

  extend FriendlyId

  friendly_id :titulo, use: :slugged

  has_many :charts
  has_many :videos
  has_many :imagenes
  accepts_nested_attributes_for :imagenes, :allow_destroy => true
  accepts_nested_attributes_for :videos, :allow_destroy => true

  scope :destacados, -> { where("destacado = ?", true)}
  scope :clase, ->(subcategoria) { where("subcategoria = ?", subcategoria) }
  scope :noticia, -> { where("categoria = ?", "Noticia") }
  scope :publicacion, -> { where("categoria = ?", "Publicación") }

  TIPOS = ['Boletín', 'Folletos', 'Declaraciones','Videos','Orientación','Reclamaciones']
  CATEGORIAS = ['Noticia', 'Publicación']
  SUBCATEGORIAS = ['Mcif', 'Recomendada']

  def self.busqueda(busqueda)
    condicion_de_busqueda = "%" + busqueda + "%"
    find(:all, :conditions => ['titulo LIKE ? OR contenido LIKE ?', condicion_de_busqueda, condicion_de_busqueda])
  end
end
