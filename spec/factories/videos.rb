# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :video do
    link { Faker::Internet.url}
    noticia
  end
end
