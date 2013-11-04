class SlidesController < InheritedResources::Base
  before_filter :authenticate_admin! 

  def create
    create! { slide_path }
  end
  def update
    update! { slide_path }
  end
end
