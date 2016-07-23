class UserMailer < ActionMailer::Base
	default :from => "noreplay@pennvolvement.com"

	def registration_confirmation(user)
		@user = user
		mail(:to => "#{user.firstname} <#{user.email}>", :subject => "Pennvolvement Email Confirmation")
	end
end
