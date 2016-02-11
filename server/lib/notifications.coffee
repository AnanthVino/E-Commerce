@Notifications = 
	email_verification: (email, user_id) ->
		console.log "notifications: email verification: ", email, user_id
		html = EmailTemplateHelper.email_verification email, user_id 
		console.log "html: ", email, user_id
		return unless html

		opts = 
			to: email
			reply_to: 'no-reply@greenroomnow.com'
			from: '"Greenroom"<no-reply@greenroomnow.com>'
			subject: 'Verify your email on Greenroom'
			html: html

		sendEmail opts

		console.log "Sent verification mail to #{opts.to}"