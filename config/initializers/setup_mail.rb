ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	:address => 'smtp.sendgrid.net',
	:port =>'587',
	:authentication => :plain,
	:user_name => ENV['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'],
	:password => ENV['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'],
	:domain => 'heroku.com',
	:enable_starttls_auto => true
}