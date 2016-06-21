require 'test_helper'

class UserTest < ActiveSupport::TestCase
	test "email cannot be empty" do
		getty = users(:getty)
		getty.email = ""
		assert_not getty.valid?
	end
	test "name cannot be empty" do
		getty = users(:getty)
		getty.name = ""
		assert_not getty.valid?
	end
end
