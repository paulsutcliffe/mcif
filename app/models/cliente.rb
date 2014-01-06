class Cliente < ActiveRecord::Base
  attr_accessible :link, :logo
  mount_uploader :logo, LogoUploader

  def self.random
    self.all.sample(12)
  end
end
