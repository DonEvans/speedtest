require 'spec_helper'

describe "Computers Controller" do

	describe "new action" do
		it "should return the Test Speed page" do
			get '/computers/new'
			response.should have_selector('h2', :content => "Test complete!")
		end
	end

	describe "index action" do

		before(:each) do
			@computers = Factory(:computers)
		end

		it "should return the Results page" do
			get '/computers'
			response.should have_selector('h3', :content => "Systems Tested")
		end
	end

	describe "show action" do

		before(:each) do
			@computers = Factory(:computers)
		end

		it "should be successful" do
			get '/computers/1'
			response.should be_success
		end

		it "should find the right page" do
			get '/computers/1'
			response.should have_selector('h2', :content => 
												"Your time has been recorded")
		end

	end

	describe "create action" do

		it "should not make a new record if nothing filled in" do
			lambda do
		  	visit 'computers/new'
				click_button
				response.should have_selector('h2', :content => "Test complete!")
			end.should_not change(Computers, :count)
		end

	it "should make a new record if fields filled in" do
			lambda do
		  	visit 'computers/new'
				fill_in "Your name (required)", 	:with => "Don"
				select "Internet Explorer 9", 		:from => "browser"
				select "Desktop"								
				set_hidden_field 'computers_time', :to => 111
				set_hidden_field 'computers_userAgentString', :to => "none"
				click_button
				response.should have_selector('h2', :content => "Your time has been recorded")
			end.should change(Computers, :count).by(1)
		end

	end

end
