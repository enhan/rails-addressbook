require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Raddresses'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #response.status.should be(200)
	  visit '/static_pages/home'
	  page.should have_content('Raddresses')
	  
    end
  end
  
  describe "About page" do
	  it "should avec the content 'About Raddresses'" do
		  visit '/static_pages/about'
		  page.should have_content('About Raddresses')
	  end
	end
	 
  
end
