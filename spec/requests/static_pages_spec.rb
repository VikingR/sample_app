require 'spec_helper'

describe "Static pages" do

  # let variables for refactoring
  let(:base_title) { "Sample App" }

  # static_pages#home
  # describe block, the string can be anything you want
  describe "Home page" do
    
    # first example marked by it ... do; the string is irrelevant and should be descriptive
    it "should have the content 'Sample App'" do
      # visit is a Capybara function and simulates a visit on the given URL
      visit '/static_pages/home'

      # Capybara variable page and function
      expect(page).to have_content('Sample App')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      # notice the have_title method which checks the content  of the <title/> tag
      expect(page).to have_title("#{base_title} | Home")
    end

  end

  # static_pages#help
  describe 'Help Page' do
    it "should have the content 'Get Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Get Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  # static_pages#about
  describe 'About Page' do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About Us")
    end
  end
  
  # static_pages#contact
  describe 'Contact Page' do
    it "should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end

  end

end