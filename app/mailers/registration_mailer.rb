class RegistrationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.registration_mailer.new_register.subject
  #
  def new_register
    @title = params[:title]
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @email = params[:email]
    @status = params[:status]
    @category = params[:category]

    mail subject: 'Nouvelle inscription sur Bienvenue.art'
  end
end
