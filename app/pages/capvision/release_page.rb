class ReleasePage < CapbetaPage
	include Header

	page_url "#{$config.host}release"

	h1 'inner_title', class: 'title'

end