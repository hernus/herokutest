require 'spec_helper'

describe Customer do
  it "should not allow a 30 char name" do 
    @customer = Customer.new
    @customer.name = 'XXXXXXXXXXXXXXXXXXXXXXXXXXX'
    @customer.should_not be_valid
  end
  
        
end