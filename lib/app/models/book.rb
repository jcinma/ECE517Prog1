class Book < ActiveRecord::Base
	
	has_paper_trail on: [:update, :create]

	

	def self.search(query)
		where("title like ?", "%#{query}%")
	end

	

end
