require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get cookies" do
    get :cookies
    assert_response :success
  end

end
