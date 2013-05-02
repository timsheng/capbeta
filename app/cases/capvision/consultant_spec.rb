require File.expand_path 'app/cases/spec_helper'
require File.expand_path 'app/cases/shared/cap_login'

describe 'consultant page', :consultant do 

	include_shared 'cap_login'
	    
	let(:consultant_page) { $navi.goto_consultant_page }
	# before(:each) do 
	# 	@consultant_page = $navi.goto_consultant_page
	# end
			

	describe 'initialize page' do 
		context 'page loading' do 
			it 'should visit Consultant page' do 
				# consultant_page = $navi.goto_consultant_page
				consultant_page.inner_title.should eql 'Consultants'
			end
		end
	end

	describe 'tabs primary' do 
		context 'verify links function' do 
			it 'should be directed to Consultant Users page by click consultant users list link' do 
				# consultant_page = $navi.goto_consultant_page
				consultant_users_page = consultant_page.link_to_consultant_users_page
				consultant_users_page.inner_title.should eql 'Consultant Users'
			end

			it 'should be directed to New Consultants page by click new consultants link' do 
				# consultant_page = $navi.goto_consultant_page
				new_consultants_page = consultant_page.link_to_new_consultants_page
				new_consultants_page.inner_title.should eql 'New Consultants'
			end

			it 'should be directed to My Favorite Consultants page by click my favorite consultants link' do 
				# consultant_page = $navi.goto_consultant_page
				my_favorite_consultants_page = consultant_page.link_to_my_favorite_consultants_page
				my_favorite_consultants_page.inner_title.should eql 'My Favorite Consultants'
			end
		end
	end
end