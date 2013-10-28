# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :imagen do
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','imagen.jpg'))}
    noticia
  end
end
