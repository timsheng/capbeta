class DataServicePage < CapbetaPage
	include Header

	page_url "#{$config.host}projects/data_service"

	h1 'inner_title', class: 'title'

end