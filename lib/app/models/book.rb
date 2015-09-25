class Book < ActiveRecord::Base
	
	has_paper_trail on: [:update, :create], :ignore => [:title, :author, :description, :ISBN]

	has_many :checkouts
	has_many :users, :through => :checkouts

	def self.search(query)
		where("title like ?", "%#{query}%")
	end

	

end
