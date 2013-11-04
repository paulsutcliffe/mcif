class ContactoMailer < ActionMailer::Base
  default from: "from@example.com"
  def mensaje_recibido(contacto)
    @contacto = contacto
    mail(:to => "info@mcifperu.com", :subject => "Registered", :replay_to => contacto.email, :from => "info@mcifperu.com")
  end

  def curriculum_recibido(contacto)
    @contacto = contacto
    mail(:to => "info@mcifperu.com", :subject => "Registered", :replay_to => contacto.email, :from => "info@mcifperu.com")
  end

end
