class PasswordResetMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.password_reset_mailer.reset_email.subject
  #
  def reset_email(user)
    @user = user
    mail(to: @user.email, subject: 'Password reset instructions')
  end
  
end
