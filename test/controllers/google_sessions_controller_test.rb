require 'test_helper'

class GoogleSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get google_sessions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get google_sessions_destroy_url
    assert_response :success
  end

end
