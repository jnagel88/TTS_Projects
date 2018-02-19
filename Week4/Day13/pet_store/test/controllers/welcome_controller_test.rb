require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get welcome_about_url
    assert_response :success
  end

  test "should get pet_list" do
    get welcome_pet_list_url
    assert_response :success
  end

end
