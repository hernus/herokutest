require 'spec_helper'

describe "User" do
  before {visit users_path}
  describe "User list" do
    it "should have link 'Add new User'" do
      page.should have_content 'Add new User'
    end
    
    it "should create a new user and display the new user on index page" do
      click_link('Add new User')
      email_address = 'john@example.com'
      fill_in 'user[email]', with: email_address
      fill_in 'user[password]', with: 'mash'
      click_button 'Save'
      page.should have_content(email_address) 
    end
    
  end
end
