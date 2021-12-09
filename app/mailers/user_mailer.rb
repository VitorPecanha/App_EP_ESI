class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_email.subject
  #
  default from: 'password@plantaplanta.com'
  def password_email
    @name = "EERS"
    @password = rand 10000
    @usermail = "leandro.chacur@gmail.com"

    mail to: @usermail, subject: 'Seu código de acesso ao Planta Planta!'
  end
end
