class Notificador < ActionMailer::Base
  default from: "from@example.com"

  def mensaje_recibido(contacto)
    @contacto = contacto
    mail(to: 'info@kosmyka.com', subject: 'Mensajes desde la web', reply_to: contacto.email, from: 'info@kosmyka.com')
  end

  def publicacion_realizada(publicacion)
    @publicacion = publicacion
    mail(to: publicacion.usuario.email, reply_to: 'info@kosmyka.com', subject: 'Publicacion Realizada' )
    mail(to: 'info@kosmyka.com', reply_to: publicacion.usuario.email, subject: 'Publicacion Realizada' )
  end

  def notificar_a_la_persona(publicacion, usuario)
    @publicacion = publicacion
    @usuario = usuario
    mail(to: usuario.email, reply_to: 'info@kosmyka.com', subject: 'Mensaje enviado')
  end

  def notificar_al_publicante(usuario)
    @usuario = usuario
    mail(to: usuario.email, reply_to: 'info@kosmyka.com', subject: 'Mensaje enviado')
  end
end
