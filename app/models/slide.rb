class Slide < ActiveRecord::Base
  attr_accessible :imagen, :link

  mount_uploader :slide, SlideUploader
end
