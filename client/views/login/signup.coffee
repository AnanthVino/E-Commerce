Template.signup_form.events
	'click button#signup': (e) ->
		console.log 'gsgdfhgghgngd:'
		$form = $('#signup_form')
		console.log 'form:', $form
		if $form.parsley().validate()
			LoginHelpers.signupWithForm $form