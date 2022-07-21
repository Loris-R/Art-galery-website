# Preview all emails at http://localhost:3000/rails/mailers/registration_mailer
class RegistrationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/registration_mailer/new_register
  def new_register
    registration = Registration.last

    title = registration.title
    first_name = registration.first_name
    email = registration.email
    last_name = registration.last_name
    category = registration.category
    status = registration.status

    RegistrationMailer.with(title: title, first_name: first_name, last_name: last_name, email: email, category: category, status: status).new_register
  end

end
