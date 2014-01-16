#coding: utf-8
# Read about factories at https://github.com/thoughtbot/factory_girl

require 'faker'

FactoryGirl.define do
  factory :noticia do
    titulo { Faker::Lorem.sentence }
    subtitulo { Faker::Lorem.sentence }
    comentario { Faker::Lorem.paragraph }
    contenido { Faker::Lorem.paragraph }
    link { Faker::Internet.url}
    tipo {['Boletín', 'Folletos', 'Declaraciones','Videos','Orientación','Reclamaciones'].sample}
    fecha "2013-10-23"
    categoria {['Noticia','Publicación'].sample}
    subcategoria {['Mcif','Recomendada'].sample}
    destacado {[true,false].sample}
  end
end
