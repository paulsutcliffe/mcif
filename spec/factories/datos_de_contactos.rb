# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :datos_de_contacto do
    telefono "MyString"
    direccion "MyString"
    trabaja_con_nosotros "MyText"
  end
end
