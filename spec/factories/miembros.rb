# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :miembro do
    nombre "MyString"
    tipo "MyString"
    fotografia "MyString"
    email "MyString"
    linkedin "MyString"
    contenido "MyText"
    puesto "MyString"
  end
end
