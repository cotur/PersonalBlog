require 'test_helper'

class ErrorControllerTest < ActionDispatch::IntegrationTest
  test "should get notfound" do
    get error_notfound_url
    assert_response :success
  end

  test "should get unacceptable" do
    get error_unacceptable_url
    assert_response :success
  end

  test "should get server_error" do
    get error_server_error_url
    assert_response :success
  end

end
