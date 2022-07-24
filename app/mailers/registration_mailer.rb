class RegistrationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.registration_mailer.new_register.subject
  #
  def new_register
    @title = params[:registration][:title]
    @first_name = params[:registration][:first_name]
    @last_name = params[:registration][:last_name]
    @email = params[:registration][:email]
    @status = params[:registration][:status]
    @category = params[:registration][:category]

    mail(to: "loris.reynaud@gmail.com", subject: 'Nouvelle inscription sur Bienvenue.art')
  end
end
