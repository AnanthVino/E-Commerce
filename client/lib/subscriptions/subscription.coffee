@Subscriber = 
	profile: (user_id) ->
		Meteor.subscribe 'full_profile', user_id