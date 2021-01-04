class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.new_user_notification.subject
  #
  def new_user_notification(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to your account')
  end
end
