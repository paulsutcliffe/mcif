class ContactosController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:new, :create]
  def new
    @contacto = Contacto.new
    @postulante = Postulante.new

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

end
