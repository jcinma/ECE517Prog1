class Book < ActiveRecord::Base
	
	has_paper_trail on: [:update, :create], :ignore => [:title, :author, :description, :ISBN]

	

	def self.search(query)
		where("title like ?", "%#{query}%")
	end

	

end
