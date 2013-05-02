class HomePage < CapbetaPage
	include Header
	
	page_url "#{$config.host}"

	h1 'inner_title', class: 'title'

	def link_to_projects_page
		self.projects

		turn_to ProjectsPage
	end

	def link_to_consultant_page
		self.consultant

		turn_to ConsultantPage
	end

	def link_to_clients_page
		self.clients 

		turn_to ClientsPage 
	end

	def link_to_release_page
		self.release 

		turn_to ReleasePage
	end

end