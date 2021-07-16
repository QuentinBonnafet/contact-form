class ContactFormMailer < ApplicationMailer

  default from: "q_lancien@hotmail.fr"

  def send_email

    @contact_first_name = params[:contact_first_name]
    @contact_last_name = params[:contact_last_name]
    @sender_email = params[:sender_email]
    @message = params[:message]

    mail(to: "quentin.bonnafet@gmail.com", subject: "Vous avez un contact!")
  end
end
