require 'test_helper'

class LitOrNahControllerTest < ActionDispatch::IntegrationTest
  test "should get freaked_it" do
    get lit_or_nah_freaked_it_url
    assert_response :success
  end

end
