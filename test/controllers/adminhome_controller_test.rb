require 'test_helper'

class AdminhomeControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get adminhome_top_url
    assert_response :success
  end

end
