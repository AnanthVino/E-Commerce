@UserHelpers = 
	updateProfile: (new_attrs) ->
		profile = _.extend Meteor.user(), new_attrs
		console.log 'profile 11:', profile
		Meteor.users.update Meteor.userId(), $set: { profile: profile }