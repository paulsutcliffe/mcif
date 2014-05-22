class ContactoMailer < ActionMailer::Base
  default from: "info@mcifperu.com"
  def mensaje_recibido(contacto)
    @contacto = contacto
    mail(:to => "info@mcifperu.com", :cc => "administracion@mcifperu.com", :subject => "Mensajes desde la web", :replay_to => contacto.email, :from => "info@mcifperu.com")
  end

  def curriculum_recibido(postulante)
    @postulante = postulante
    attachments[File.basename(postulante.curriculum.path)] = postulante.curriculum.read
    mail(:to => "info@mcifperu.com", :cc => "administracion@mcifperu.com", :subject => "Curriculum de postulante", :replay_to => postulante.email, :from => "info@mcifperu.com")
  end

end
