class RaccPage < CapbetaPage
	include Header

	page_url "#{$config.host}projects/recommend_arranged"

	h1 'inner_title', class: 'title'

end