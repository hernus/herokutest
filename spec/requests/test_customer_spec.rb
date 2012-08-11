require 'spec_helper'
name1 = 'ABC' + rand(999).to_s 
name2 = 'DEF' + rand(999).to_s

describe 'Customers' do
  before { visit customers_path}  
  
  describe 'Index Page' do
     it "should have H1 tag Customer List" do
       page.should have_selector('h1',text:'Customer List')
     end
  end

  describe 'Add New Customer Page' do
    it "must add customer 'XYZ Comp' to the list" do
#     visit customers_path
      click_link('Add New Customer')
      fill_in 'customer[name]', with: name1
      click_button('Save')
      page.should have_selector('td', text:name1)      
    end  
  end

  describe 'Edit Page' do
    it "should modiy customer name successfully" do    
#     visit customers_path
      find_link('edit').click
      fill_in 'customer[name]', with: name2      
      click_button 'Save'
      page.should have_selector('td', text:name2)
    end
  end  

end