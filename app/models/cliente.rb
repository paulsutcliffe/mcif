class Cliente < ActiveRecord::Base
  attr_accessible :link, :logo
  mount_uploader :logo, LogoUploader
end
