class StrategicIntelligencePage < CapbetaPage
	include Header

	page_url "#{$config.host}projects/si"

	h1 'inner_title', class: 'title'

end