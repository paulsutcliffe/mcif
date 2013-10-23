# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :noticia do
    titulo "MyString"
    subtitulo "MyString"
    contenido "MyText"
    link "MyString"
    tipo "MyString"
    fecha "2013-10-23"
    categoria "MyString"
    destacado false
  end
end
