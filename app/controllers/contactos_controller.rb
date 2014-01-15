class ContactosController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:new, :create]
  def new
    @contacto = Contacto.new
    @postulante = Postulante.new
    @datos_de_contacto = DatosDeContacto.first
  end
  def create
    create! do |success, failure|
      success.html do
        ContactoMailer.mensaje_recibido(@contacto).deliver

        flash[:notice] = "Tu mensaje fue enviado con exito"
        redirect_to new_contacto_path
      end
      failure.html do
        flash[:notice] = "No ha sido enviado el mensaje."
        render :accion => "new"
      end
    end
  end

  def editar_datos_de_contacto
    @datos_de_contacto = DatosDeContacto.first
  end

  def update_datos_de_contacto
    @datos_de_contacto = DatosDeContacto.first
    @datos_de_contacto.update_attributes(params[:datos_de_contacto])
    if @datos_de_contacto.save
      redirect_to action: 'index'
    end
  end
end
