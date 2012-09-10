require 'test_helper'

class RedirectControllerTest < ActionController::TestCase
  test "should get ier" do
    get :ier
    assert_response :success
  end

end
