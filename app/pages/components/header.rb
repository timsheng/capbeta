module Header
	include PageObject
	link 'logout', text: 'Logout'
	link 'home', href: '/'
	link 'projects', href: '/projects'
	link 'consultant', href: '/experts'
	link 'clients', href: '/clients/remcontacts'
	link 'release', href: '/release'
end