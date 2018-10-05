module LogMeIn
	def check_pass(login, password)
		user = self.find_by_login(login)
		key = user.key
		return user.password == Digest::SHA256.hexdigest(password + key)
	end
end
