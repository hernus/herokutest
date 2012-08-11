require 'spec_helper'

  describe "Customer Index Page" do
    it "should contain the phrase 'Customer List'" do
      visit '/customers'
      page.should   have_content('Customer List')
    end        
    it "should contain the phrase 'Add New'" do
      visit '/customers'
      page.should   have_content('Add New')
    end        
  end

