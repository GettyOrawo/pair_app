require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test 'should check content' do
    get new_user_url
    assert_select 'h1', /sign up/i
    assert_select 'form'
    assert_select 'button', 'Sign Up'
  end
  test 'should show user page' do
    getty = users(:getty)
    # binding.pry
    get user_path(getty)
  end

end
