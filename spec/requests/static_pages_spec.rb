require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
    before do
      visit '/static_pages/home'
    end
    
    it "should have the h1 'Sample App'" do
      page.should have_selector('h1', text: 'Sample App')
    end
    
    it "should have the title 'Home'" do
      page.should have_selector('title', text: ' | Home')
    end
  end
  
  describe "Help page" do
    before do
      visit '/static_pages/help'
    end
    
    it "should have the h1 'Help'" do
      page.should have_selector('h1', text: 'Help')
    end
    
    it "should have the title 'Help'" do
      page.should have_selector('title', text: ' | Help')
    end
  end
  
  describe "About page" do
    before do
      visit '/static_pages/about'
    end
    
    it "should have the h1 'About Us'" do
      page.should have_selector('h1', text: 'About Us')
    end
    
    it "should have the title 'About Us'" do
      page.should have_selector('title', text: ' | About Us')
    end
  end
end
