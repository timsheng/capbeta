class RoadshowPage < CapbetaPage
	include Header

	page_url "#{$config.host}projects/roadshow"

	h1 'inner_title', class: 'title'

end