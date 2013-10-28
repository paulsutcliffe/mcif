class Postulante < ActiveRecord::Base
  attr_accessible :curriculum, :email, :nombre
  mount_uploader :curriculum, PdfUploader 
end
