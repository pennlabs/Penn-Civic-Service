class UserMailer < ActionMailer::Base
  default from: 'noreply@pennvolvement.com'

  def registration_confirmation(user)
    @user = user
    @url = "https://pennvolvement.com/confirm?c=#{user.confirm_token}"
    mail(to: user.email, subject: 'Pennvolvement Email Confirmation')
  end
end
