shared_examples 'cap_login' do 
	it 'should login' do
		data = test_data('cap_login_user')
		user = data['login']['user']
		password = data['login']['password']

		login_page = $navi.goto_cap_login_page
		home_page = login_page.login user, password
		home_page.logout?.should be_true
	end
end