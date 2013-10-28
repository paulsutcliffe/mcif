# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :slide do
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','slide.jpg'))}
    link{ Faker::Internet.url }
  end
end
