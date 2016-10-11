config.action_mailer.delivery_method = :smtp
# SMTP settings for gmail
config.action_mailer.smtp_settings = {
	:address              => "smtp.sendgrid.net",
	:port                 => 587,
	:user_name            => ENV['SENDGRID_USERNAME'],
	:password             => ENV['SENDGRID_PASSWORD'],
	:authentication       => "plain",
	:enable_starttls_auto => true
}
