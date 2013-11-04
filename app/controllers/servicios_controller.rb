class ServiciosController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:show, :index]

  def index
    @servicios = Servicio.all
    @servicio = Servicio.first
  end

  def show
    @servicio = Servicio.find(params[:id])
    respond_to do |format|
      #format.html
      format.js   {}
      format.json { render json: @servicio }
    end
  end

  def create
    create! { servicios_path }
  end

  def update
    update! { servicios_path }
  end
end
