class ClientsPage < CapbetaPage
	include Header

	page_url "#{$config.host}clients/contacts/remcontacts"

	h1 'inner_title', class: 'title'

	link 'all_contacts', href: '/clients/contacts/contacts'
	link 'my_contacts', href: '/clients/contacts/mycontacts'

	def link_to_all_contacts_page
		self.all_contacts 

		turn_to AllContactsPage
	end

	def link_to_my_contacts_page
		self.my_contacts 

		turn_to MyContactsPage
	end

end