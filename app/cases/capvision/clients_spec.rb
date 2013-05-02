require File.expand_path 'app/cases/spec_helper'
require File.expand_path 'app/cases/shared/cap_login'

describe 'clients page', :clients do 

	include_shared 'cap_login'
	let(:clients_page){$navi.goto_clients_page}

	describe 'initialize page' do 
		context 'page loading' do 
			it 'should visit clients page' do 
		    	# clients_page = $navi.goto_clients_page
		    	clients_page.inner_title.should eql 'My REM Contacts'
		    end
		end
	end

	describe 'tabs primary' do 
		context 'verify links function' do 
			it 'should be directed to All Contacts page by click all contacts link' do 
				# clients_page = $navi.goto_clients_page 
				all_contacts_page = clients_page.link_to_all_contacts_page
				all_contacts_page.inner_title.should eql 'All Contacts'
			end

			it 'should be directed to My Contacts page by click my contacts link' do 
				# clients_page = $navi.goto_clients_page
				my_contacts_page = clients_page.link_to_my_contacts_page
				my_contacts_page.inner_title.should eql 'My Contacts'
			end
		end
	end
end