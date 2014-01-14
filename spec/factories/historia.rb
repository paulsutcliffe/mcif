# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :historium, :class => 'Historia' do
    titulo "MyString"
    subtitulo "MyString"
    contenido "MyText"
  end
end
