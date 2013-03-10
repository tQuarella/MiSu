require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    
    it "should have the MiSu tag line" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Mi Closet Es Su Closet!')
    end
    
    it "should have the right title" do
      visit'/static_pages/home'
      page.should have_selector('title',
                          :text => "Mi Closet Es Su Closet | Home")
    end
  end
  
  describe "Help page" do
    
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    
    it "should have the right title" do
      visit'/static_pages/help'
      page.should have_selector('title',
                          :text => "Mi Closet Es Su Closet | Help")
    end
  end
  
  describe "About page" do
    
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
    
    it "should have the right title" do
      visit'/static_pages/about'
      page.should have_selector('title',
                          :text => "Mi Closet Es Su Closet | About Us")
    end
  end
 
end
