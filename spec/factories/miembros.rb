# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :miembro do
    nombre { Faker::Name.name }
    tipo {["Expertos","Directorio"].sample}
    fotografia { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','imagen.jpg'))}
    email { Faker::Internet.email}
    linkedin { Faker::Internet.url}
    contenido { Faker::Lorem.paragraph}
    puesto { Faker::Company.suffix }
    profesion { Faker::Company.bs }
  end
end
