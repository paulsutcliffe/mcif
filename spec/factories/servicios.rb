# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :servicio do
    icono { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','icono.png'))}
    fotografia { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','logo_mcif.jpg'))}
    nombre { Faker::Name.name}
    contenido { Faker::Lorem.paragraph }
  end
end
