require 'test_helper'

class MenusControllerTest < ActionController::TestCase
  test "should get menu1" do
    get :menu1
    assert_response :success
  end

end
