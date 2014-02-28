class SlidesController < InheritedResources::Base
  before_filter :authenticate_admin! 

  def index
    @slides = Slide.order("position")
  end

  def move
    if ["move_lower", "move_higher", "move_to_top", "move_to_bottom"].include?(params[:method]) and params[:slide_id] =~ /^\d+$/
      Slide.find(params[:slide_id]).send(params[:method])
    end
    redirect_to slides_path
  end

  def create
    create! { root_path }
  end
  def update
    update! { root_path }
  end
  def destroy
    destroy! { root_path }
  end
end
