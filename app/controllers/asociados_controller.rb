class AsociadosController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:index, :show]

  def index
    @asociados = Asociado.order("position")
  end

  def new
    @asociado = Asociado.new
    @asociados = Asociado.all
  end

  def move
    if ["move_lower", "move_higher", "move_to_top", "move_to_bottom"].include?(params[:method]) and params[:asociado_id] =~ /^\d+$/
      Asociado.find(params[:asociado_id]).send(params[:method])
    end
    redirect_to asociados_path
  end

  def create
    create! { asociados_path }
  end

  def update
    update! { asociados_path }
  end

  def destroy
    destroy! { asociados_path }
  end
end
