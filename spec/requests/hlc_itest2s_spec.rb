require 'spec_helper'

describe 'Employees View' do
  describe "The Employee Index Screen" do
    it "should list all employees" do
      visit employees_path
      page.should have_content 'employees'
    end
  end
end
