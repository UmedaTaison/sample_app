require "test_helper"

class UsersLoginTest < ActionDispatch::IntegrationTest
  
  test "login with invalid information" do
    get login_path
    assert_response :success
    assert_select "title", "Log in | Ruby on Rails Tutorial Sample App"
    post login_path, params: { session: { email: "", password: "" } }
    assert_response :unprocessable_entity
    assert_select "title", "Log in | Ruby on Rails Tutorial Sample App"
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end
end
