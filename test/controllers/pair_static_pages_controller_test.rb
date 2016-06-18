require 'test_helper'

class PairStaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
    assert_select 'h1', "Welcome to our Awesomeness"
    assert_select 'button', "Sign up now"
    assert_select 'title', "Welcome to awesomeness"
  end

  test "should get help" do
    get help_url
    assert_response :success
    assert_select 'h1', "Our Help Page"
    assert_select 'title', 'Welcome to awesomeness | Help'
  end

  test "should get about" do
    get about_url
    assert_response :success
    assert_select 'title', 'Welcome to awesomeness | About'
    assert_select 'h1', 'Our About Page'
  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_select 'p', /Find us on/i
end

test "should get FAQ" do
  get faq_url
  assert_response :success
  assert_select 'h1', 'Frequently Asked Questions'
  assert_select 'p', 'a question'
end 
end
