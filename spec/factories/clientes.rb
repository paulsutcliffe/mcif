# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :cliente do
    logo { Rack::Test::UploderFile.new(File.join(Rails.root,'spec','support','images','foto.jpg'))}
    link { Faker::Internet.url }
  end
end
