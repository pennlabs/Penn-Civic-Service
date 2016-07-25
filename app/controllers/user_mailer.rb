class UserMailer < ActionMailer::Base
	def registration_confirmation(user)
		@user = user
		msg = "Hello " + "#{user.firstname}, \n\n" +
                "Click the following link to finish setting up your account:\n \n" +
		"http://pennvolvement.com/confirm?c=#{user.confirm_token}"
		`echo "#{msg}" | mailx -s "Pennvovlement Email Confirmation" #{user.email} -aFrom:noreply@pennvolvement.com`
	end
end
