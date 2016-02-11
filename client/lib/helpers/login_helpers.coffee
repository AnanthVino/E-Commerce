@LoginHelpers = 
	loginWithForm: ($form) ->
		data = FormHelpers.getFormData $form
		console.log 'login data:', data
		Meteor.loginWithPassword data.email, data.password, (err, result) ->
			if err 
				return $form.find('.error-container').text err.reason
			Router.go 'home'

	logout: (route='login') ->
		Meteor.logout ->
			Router.go(route)

	signupWithForm: ($form) ->
		data = FormHelpers.getFormData $form
		console.log 'data:', data

		Accounts.createUser { email: data.email, password: data.password }, (err, res) ->
			console.log 'err:', err
			console.log 'res:'
			if err
				return $form.find('.error-container').text err.reason

			profile = 
				name: data.name
				phone: data.phone

			console.log 'profile:', profile

			UserHelpers.updateProfile profile
			Router.go 'home'
			



		