#encoding: utf-8
require File.expand_path 'app/cases/spec_helper'
require File.expand_path 'app/cases/shared/cap_login'

describe 'project page', :projects do 
	
	include_shared 'cap_login'

	let(:projects_page){$navi.goto_projects_page}

	# before(:each) do 
 # 		@projects_page = $navi.goto_projects_page
 # 	end

	describe 'initialize page' do 
		

 		context 'page loading' do 
 			it 'should visit Project Consultations page' do 
 				# projects_page = $navi.goto_projects_page
 				projects_page.inner_title.should eql "Consultations Projects"
 			end
 		end
 	end

 	describe 'tabs primary' do 
 		
 		context 'verify links function' do 
 			it 'should be directed to Newstalk page by click newstalk link' do 
 				# projects_page = $navi.goto_projects_page
 				newstalk_page = projects_page.link_to_newstalk_page
 				newstalk_page.inner_title.should eql 'Newstalk Projects'
 			end

 			it 'should be directed to Events page by click events link' do 
 				# projects_page = $navi.goto_projects_page
 				events_page = projects_page.link_to_events_page
 				events_page.inner_title.should eql 'Events Projects'
 			end

 			it 'should be directed to Roadshow page by click roadshow link' do 
 				# projects_page = $navi.goto_projects_page
 				roadshow_page = projects_page.link_to_roadshow_page
 				roadshow_page.inner_title.should eql 'Roadshow Projects'
 			end 

 			it 'should be directed to Data Service page by click data service link' do 
 				# projects_page = $navi.goto_projects_page
 				data_service_page = projects_page.link_to_data_service_page
 				data_service_page.inner_title.should eql 'Data Service Projects'
 			end

 			it 'should be directed to Strategic Intelligence page by click strategic intelligence link' do 
 				# projects_page = $navi.goto_projects_page
 				strategic_intelligence_page = projects_page.link_to_strategic_intelligence_page
 				strategic_intelligence_page.inner_title.should eql 'Strategic Intelligence Projects'

 			end

 			it 'should be directed to Recommended/Arranged/Completed Consultations page by click Recommended/Arranged/Completed Consultations link' do 
 				# projects_page = $navi.goto_projects_page
 				racc_page = projects_page.link_to_racc_page
 				racc_page.inner_title.should eql 'Recommended/Arranged/Completed Consultations'
			end 


 		end 

	end
end