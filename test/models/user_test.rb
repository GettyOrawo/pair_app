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
	test "Email format to be valid" do
		sigu = users(:sigu)
		valid_emails = %w[asterik@pos.com Teres@tre.com]
		valid_emails.each do |emails| 
			sigu.email = emails
			assert sigu.valid?
		end
	end
	test "Email format to be invalid" do
		sigu = users(:sigu)
		invalid_emails = %w[asterik@pos..com Teres@tre,com]
		invalid_emails.each do |wrong_email| 
			sigu.email = wrong_email
			assert_not sigu.valid?
	end
	end
end
