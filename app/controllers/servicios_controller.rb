class ServiciosController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:show, :index]

  def index
    @servicios = Servicio.all
    @servicio = params[:servicio_id] ? Servicio.find(params[:servicio_id]) : Servicio.first
    @texto_de_servicio = TextoDeServicio.first
  end

  def show
    @servicio = Servicio.find(params[:id])
    respond_to do |format|
      #format.html
      format.js {}

      format.json { render json: @servicio }
    end
  end

  def editar_texto_de_servicio
    @texto_de_servicio = TextoDeServicio.first
  end

  def update_texto_de_servicio
    @texto_de_servicio = TextoDeServicio.first
    @texto_de_servicio.update_attributes(params[:texto_de_servicio])
    if @texto_de_servicio.save
      redirect_to action: 'index'
    end
  end

  def create
    create! { servicios_path }
  end

  def update
    update! { servicios_path }
  end

  def destroy
    destroy! { servicios_path }
  end
end
