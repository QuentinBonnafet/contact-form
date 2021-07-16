class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def contact
    
    @contact_first_name = params[:first_name]
    @contact_last_name = params[:last_name]
    @sender_email = params[:email]
    @message = params[:message]
    ContactFormMailer.with(contact_first_name: @contact_first_name, contact_last_name: @contact_last_name, sender_email: @send_email, message: @message).send_email.deliver_now
    flash[:notice] = "Message envoyé"

  end
end
