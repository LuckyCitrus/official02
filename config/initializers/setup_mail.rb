ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	:address => 'smtp.sendgrid.net',
	:port =>'587',
	:authentication => :plain,
    #:user_name      => ENV['SENDGRID_USERNAME'],
	#:password       => ENV['SENDGRID_PASSWORD'],
    user_name: Rails.application.credentials.dig(:sendgrid, :user_name),
    password: Rails.application.credentials.dig(:sendgrid, :password),
	:domain => 'heroku.com',
	:enable_starttls_auto => true
}
