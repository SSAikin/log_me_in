class ApplicationRecord < ActiveRecord::Base
	extend LogMeIn
 
	self.abstract_class = true
end