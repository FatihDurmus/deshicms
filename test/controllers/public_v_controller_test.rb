require 'test_helper'

class PublicVControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
