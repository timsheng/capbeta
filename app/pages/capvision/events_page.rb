class EventsPage < CapbetaPage
	include Header

	page_url "#{$config.host}projects/events"

	h1 'inner_title', class: 'title'

end