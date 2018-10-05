require 'coveralls'
Coveralls.wear!
require 'test_helper'

class LogMeInTest < ActiveSupport::TestCase
	test "test_user_login" do
		assert_equal "login", User.find_by_login("login").login
	end

	test "check_pass_success" do
		assert_equal true, User.check_pass("login", "estaeumasenhaa")
	end

	test "check_pass_failure" do
		assert_equal false, User.check_pass("login", "estaeumasenhaa")
	end
end
