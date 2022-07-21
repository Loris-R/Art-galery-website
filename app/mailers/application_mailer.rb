class ApplicationMailer < ActionMailer::Base
  default from: "loris.reynaud@gmail.com"
  # default from: "olivier@bienvenue.art"

  layout "mailer"
end
