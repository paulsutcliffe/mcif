class ServiciosController < InheritedResources::Base

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
end
