# Router.onBeforeAction ->
# 	unless Meteor.userId() 
# 		Router.go '/login'
# 	else
# 		@next()

# Router.filters =
# 	isLoggedIn: ->
# 		if Meteor.userId()
# 			Router.go '/home'
# 		else
# 			@next()

# 	mustLogin: ->
# 		if Meteor.userId()
# 			@next()
# 		else
# 			Router.go '/login'