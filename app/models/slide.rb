class Slide < ActiveRecord::Base
  attr_accessible :imagen, :link, :video

  mount_uploader :imagen, SlideUploader

  auto_html_for :video do
    youtube(width: 569, height: 320)
    vimeo(width: 569, height: 320)
  end
  acts_as_list
end
