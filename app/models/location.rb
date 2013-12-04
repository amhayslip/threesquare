class Location < ActiveRecord::Base
	def snippet
		self.review.truncate(50)
	end
end
