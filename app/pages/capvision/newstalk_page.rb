class NewstalkPage < CapbetaPage
	include Header

	page_url "#{$config.host}projects/newstalk"

	h1 'inner_title', class: 'title'

end