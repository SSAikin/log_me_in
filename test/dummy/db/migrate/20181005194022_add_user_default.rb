class AddUserDefault < ActiveRecord::Migration
	def change
		u = User.find_by_login("login")
		unless u
			u = User.new
			u.login = "login"
			u.password = "4b6519cb5fb9e01d0f65de400bd1165bc23dac5b763fafd0beba1c441605555b"
			u.key = "cdf7c0bce6145cb513b4454e21920620"
			u.save 
		end
	end
end
