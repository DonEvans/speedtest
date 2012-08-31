require 'spec_helper'

describe "static Pages" do

	describe "home page" do
		it "should have a Home page at /" do
			get '/'
			response.should have_selector('h2', :content => "How it works")
		end
	end

	describe "browsers page" do
			it "should have a browsers page at /pages/browsers " do
				get '/page/browsers'
				response.should have_selector('h2', 
					:content => "Which browser has the fastest Javascript engine?" )
			end
	end

	describe "languages page" do
		it "should have a languages page at /pages/languages" do
			get 'page/languages'
			response.should have_selector('h2',
			:content => "One algorithm. Four different languages.")
		end
	end
end
