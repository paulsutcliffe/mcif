require 'factory_girl'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

DatabaseCleaner.clean

FactoryGirl.create :admin

12.times do
  FactoryGirl.create :cliente
end

12.times do
  FactoryGirl.create :contacto
end

12.times do
  FactoryGirl.create :imagen
end

12.times do
  FactoryGirl.create :miembro
end

12.times do
  FactoryGirl.create :postulante
end

12.times do
  FactoryGirl.create :proyecto
end

12.times do
  FactoryGirl.create :servicio
end

12.times do
  FactoryGirl.create :slide
end

6.times do
  FactoryGirl.create :video
end
