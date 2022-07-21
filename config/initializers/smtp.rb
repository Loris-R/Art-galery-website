ActionMailer::Base.smtp_settings = {
  address: "mail.privateemail.com",
  port: 587,
  user_name: ENV['EMAIL_ADDRESS'],
  password: ENV['EMAIL_PASSWORD'],
  authentication: :plain,
  enable_starttls_auto: true
}