require 'spec_helper'

describe JoinController do

  describe "GET 'join'" do
    it "returns http success" do
      get 'join'
      response.should be_success
    end
  end

  describe "GET 'welcome'" do
    it "returns http success" do
      get 'welcome'
      response.should be_success
    end
  end

end
