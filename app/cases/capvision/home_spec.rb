#encoding: utf-8
require File.expand_path 'app/cases/spec_helper'
require File.expand_path 'app/cases/shared/cap_login'

describe 'home page', :home do 
	
	include_shared 'cap_login'

	tdata = test_data('home_page')

	let(:home_page){$navi.goto_home_page }

	# before(:each) do 
 # 		@home_page = $navi.goto_home_page 
 # 	end

	describe 'initialize page' do 
		
		
 		context 'page loading' do

 			it 'should visit Home page' do 
 				
 				# home_page = $navi.goto_home_page
 				home_page.inner_title.should eql tdata['expect']['case1']
 			end
 		end	
	end

	describe 'primary menu' do 
		
 		context 'verify links function' do 


 			it 'should be directed to Projects page by click projects tab' do 
 				
 				# home_page = $navi.goto_home_page
 				projects_page = home_page.link_to_projects_page
 				projects_page.inner_title.should eql tdata['expect']['case2']
 			end

 			it 'should be directed to Consultant page by click consultant tab' do 
 				# home_page = $navi.goto_home_page
 				consultant_page = home_page.link_to_consultant_page
 				consultant_page.inner_title.should eql tdata['expect']['case3']
 			end

 			it 'should be directed to Clients page by click client tab' do 
 				# home_page = $navi.goto_home_page
 				clients_page = home_page.link_to_clients_page
 				clients_page.inner_title.should eql tdata['expect']['case4']
 			end

 			it 'should be directed to Release page by click release note tab' do 
 				# home_page = $navi.goto_home_page
 				release_page = home_page.link_to_release_page
 				release_page.inner_title.should eql tdata['expect']['case5']
 			end

 		end

 	end


	
end