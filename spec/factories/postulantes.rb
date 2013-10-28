# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :postulante do
    nombre { Faker::Lorem.name}
    email { Faker::Internet.email}
    curriculum { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','cv.pdf'))}
  end
end
