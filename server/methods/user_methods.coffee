Meteor.methods
	'send_verification_email': (email, user_id) ->
		Notifications.email_verification email, user_id 