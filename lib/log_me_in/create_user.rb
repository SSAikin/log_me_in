module LogMeIn
	module CreateUser

		def define_password
			self.key = SecureRandom.base64
			self.password = Digest::SHA256.hexdigest(self.password + self.key)
			return self
		end
		
	end
end
