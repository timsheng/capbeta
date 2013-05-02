class MyContactsPage < CapbetaPage
	include Header

	page_url "#{$config.host}clients/contacts/mycontacts"

	h1 'inner_title', class: 'title'

end