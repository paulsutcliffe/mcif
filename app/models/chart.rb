class Chart < ActiveRecord::Base
  attr_accessible :noticia_id, :titulo

  belongs_to :noticia

end
