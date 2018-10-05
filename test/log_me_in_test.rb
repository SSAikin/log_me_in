require 'coveralls'
Coveralls.wear!
require 'test_helper'

class LogMeInTest < ActiveSupport::TestCase
	test "test_user_login" do
		assert_equal "login", User.find_by_login("login").login
	end

	test "check_pass_success" do
		assert_equal true, User.check_pass("login", "estaeumasenha")
	end

	test "check_pass_failure" do
		assert_equal false, User.check_pass("login", "estaeumasenhaa")
	end

	test "create_user" do
		u = User.new(login: "my_name", password: "this")
		assert_equal u, u.define_password
	end

	test "create_user_diff_hash" do
		u = User.new(login: "my_name", password: "estaeumasaenha")
		u = u.define_password
		assert_not_equal User.first.password, u.password
	end
end
