Template.header_layout.events
	'mouseover .dropdown': ->
		$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn()

	'click a.sign-out' : ->
		LoginHelpers.logout('login')