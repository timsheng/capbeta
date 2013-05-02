#encoding: utf-8
class CapLoginPage < CapbetaPage
	page_url "#{$config.host}user/login"

	text_field 'username', id: 'edit-name'
	text_field 'password', id: 'edit-pass'
	button 'login_btn', id: 'edit-submit'

	def login user,password
		self.username = user
		self.password = password
		self.login_btn

		turn_to HomePage
	end
end
