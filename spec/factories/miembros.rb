# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :miembro do
    nombre 
    tipo "MyString"
    fotografia "MyString"
    email "MyString"
    linkedin "MyString"
    contenido "MyText"
    puesto "MyString"
  end
end
