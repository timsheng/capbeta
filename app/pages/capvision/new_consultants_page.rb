class NewConsultantsPage < CapbetaPage
	include Header

	page_url "#{$config.host}experts/new"

	h1 'inner_title', class: 'title'

end