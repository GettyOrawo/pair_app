require 'test_helper'

class PairStaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
    assert_select 'h1', "Welcome to our Awesomeness"
    assert_select 'button', "Sign up now"
  end

  test "should get help" do
    get pair_static_pages_help_url
    assert_response :success
    assert_select 'h1', "Our Help Page"
  end

end
