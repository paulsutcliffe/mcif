class PostulantesController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:create]
  def create
    create! do |success, failure|
      success.html do
        ContactoMailer.curriculum_recibido(@postulante).deliver

        flash[:notice] = "Tu curriculum fue enviado con exito"
        redirect_to new_contacto_path
      end
      failure.html do
        flash[:notice] = "No se ha podido enviar el curriculum"
        render :controller => "contactos", :accion => "new"
      end
    end
  end
end
