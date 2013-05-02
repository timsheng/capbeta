class ConsultantUsersPage < CapbetaPage
	include Header

	page_url "#{$config.host}experts/userlist"

	h1 'inner_title', class: 'title'

end