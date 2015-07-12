require 'test_helper'

class MainWindowControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
