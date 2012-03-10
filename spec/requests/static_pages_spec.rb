require 'spec_helper'

describe "StaticPages" do
	describe "Home page" do
		it "should have the content 'Sample App'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'Sample App')
		end
		it "should have the rigth title" do
			visit '/static_pages/home'
			page.should have_selector('title',
											:text => "Ruby on Rails Tutorial Sample App")
		end
		it "should not have a custom page title" do
			visit '/static_pages/home'
			page.should_not have_selector('title', :text =>'| Home')
		end
	end

	describe "help pages" do
		it "should have conetnt 'Help'" do
			visit '/static_pages/help'
			page.should have_content('Help')
		end
		it "should have the rigth title" do
			visit '/static_pages/help'
			page.should have_selector('title',
											:text => "Ruby on Rails Tutorial Sample App | Help")
		end
	end

	describe "About pages" do
		it "should have the conetent 'About us'" do
			visit '/static_pages/about'
			page.should have_content('About Us')
		end
		it "should have the rigth title" do
			visit '/static_pages/about'
			page.should have_selector('title',
											:text => "Ruby on Rails Tutorial Sample App | About")
		end
	end
end
