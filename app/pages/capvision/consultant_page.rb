class ConsultantPage < CapbetaPage
	include Header

	page_url "#{$config.host}experts"

	h1 'inner_title', class: 'title'
	link 'consultant_users', href: '/experts/userlist'
	link 'new_consultants', href: '/experts/new'
	link 'my_favorite_consultants', href: '/experts/favorite'

	def link_to_consultant_users_page
		self.consultant_users 

		turn_to ConsultantUsersPage
	end

	def link_to_new_consultants_page
		self.new_consultants 

		turn_to NewConsultantsPage
	end

	def link_to_my_favorite_consultants_page
		self.my_favorite_consultants 

		turn_to MyFavoriteConsultantsPage
	end
end