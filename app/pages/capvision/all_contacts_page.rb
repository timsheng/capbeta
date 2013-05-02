class AllContactsPage < CapbetaPage
	include Header

	page_url "#{$config.host}clients/contacts/contacts"

	h1 'inner_title', class: 'title'

end