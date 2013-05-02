class ProjectsPage < CapbetaPage
	include Header

	page_url "#{$config.host}projects/consultations"

	h1 'inner_title', class: 'title'

	link 'newstalk', href: '/projects/newstalk'
	link 'events', href: '/projects/events'
	link 'roadshow', href: '/projects/roadshow'
	link 'data_service', href: '/projects/data_service'
	link 'strategic_intelligence', href: '/projects/si'
	link 'racc', href: '/projects/recommend_arranged'

	def link_to_newstalk_page
		self.newstalk

		turn_to NewstalkPage
	end

	def link_to_events_page
		self.events

		turn_to EventsPage
	end

	def link_to_roadshow_page
		self.roadshow 

		turn_to RoadshowPage
	end

	def link_to_data_service_page
		self.data_service 

		turn_to DataServicePage
	end

	def link_to_strategic_intelligence_page
		self.strategic_intelligence 

		turn_to StrategicIntelligencePage
	end

	def link_to_racc_page
		self.racc 

		turn_to RaccPage
	end
end