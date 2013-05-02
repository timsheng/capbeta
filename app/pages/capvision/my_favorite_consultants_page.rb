class MyFavoriteConsultantsPage < CapbetaPage
	include Header

	page_url "#{$config.host}experts/favorite"

	h1 'inner_title', class: 'title'

end