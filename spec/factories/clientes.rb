# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :cliente do
    logo { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','logo.jpg'))}
    link { Faker::Internet.url }
  end
end
