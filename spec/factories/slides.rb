# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :slide do
    imagen { Rack::Test::UploaderFile.new(File.join(Rails.root,'spec','support','images','foto.jpg'))}
    link{ Faker::Internet.url }
  end
end
