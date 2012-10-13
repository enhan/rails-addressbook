require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Raddresses'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #response.status.should be(200)
	  visit root_path
	  page.should have_content('Raddresses')
	  
    end
	
	it "should have the correct title" do
		visit root_path
		page.should have_selector('title', :text => "Raddresses | Home")
	end
	
  end
  
  describe "About page" do
	  it "should avec the content 'About Raddresses'" do
		  visit '/about'
		  page.should have_content('About Raddresses')
	  end
	  
	  it "should have the correct title" do
		visit '/about'
		page.should have_selector('title', :text => "Raddresses | About")
	end
	  
	end
	 
  
end
