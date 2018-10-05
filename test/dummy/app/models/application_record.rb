class ApplicationRecord < ActiveRecord::Base
	include LogMeIn::CreateUser
	extend LogMeIn::CheckPassword
 
	self.abstract_class = true
end