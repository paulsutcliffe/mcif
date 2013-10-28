# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :proyecto do
    nombre { Faker::Lorem.name }
    logo { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','logo.jpg'))}
    foto { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','imagen.jpg'))}
    contenido { Faker::Lorem.paragraph }
  end
end
