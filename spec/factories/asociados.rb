require 'faker'

FactoryGirl.define do
  factory :asociado do
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','logo.jpg'))}
    link { Faker::Internet.url }
  end
end
