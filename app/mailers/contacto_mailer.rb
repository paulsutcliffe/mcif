class ContactoMailer < ActionMailer::Base
  default from: "info@kosmyka.com"
  def mensaje_recibido(contacto)
    @contacto = contacto
    mail(:to => "info@mcifperu.com", :subject => "Mensajes desde la web", :replay_to => contacto.email, :from => "info@mcifperu.com")
  end

  def curriculum_recibido(postulante)
    @postulante = postulante
    attachments[File.basename(postulante.curriculum.path)] = postulante.curriculum.read
    mail(:to => "info@kosmyka.com", :subject => "Curriculum de postulante", :replay_to => postulante.email, :from => "info@kosmyka.com")
  end

end
