ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	:address => 'smtp.sendgrid.net',
	:port =>'587',
	:authentication => :plain,
	:user_name => 'app165928477@heroku.com',
	:password => 'uhgaxovk3492',
	:domain => 'heroku.com',
	:enable_starttls_auto => true
}