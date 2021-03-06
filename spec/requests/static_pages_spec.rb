require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')

    end

    it 'should have the base title' do
      visit '/static_pages/home'
      page.should have_selector('title', :text => 'App | Home')

    end

    it 'should not have a custom page title' do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Help page" do
    it "should have the content 'help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it 'should have the right title' do
      visit '/static_pages/help'
      page.should have_selector('title', :text => 'App | Help')

    end
  end

  describe "About page" do
    it "should have the content 'About us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About us')
    end

    it 'should have the right title' do
      visit '/static_pages/about'
      page.should have_selector('title', :text => 'App | About us')

    end
  end

    describe "Contact page" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end

    it 'should have the right title' do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => 'App | Contact')

    end
  end


end
