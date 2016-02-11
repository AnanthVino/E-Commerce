@EmailTemplateHelper = 
	email_verification: (email, user_id) ->
		token = UserHelperServer.generateEmailVerificationToken email, user_id

		return unless token

		
		template_data = 
			name: UserHelpers.getFirstName(user_id) or email
			email: email
			greeting: 'Hey there,'
			link_text: "Verify Email"
			message: "One last step! Just click the button below to verify your email with greenroom."
			url: Meteor.absoluteUrl() + 'verify_email/' + token

		console.log "template data: ", template_data 

		html = @get_html 'notification', template_data

		return html
