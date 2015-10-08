class Book < ActiveRecord::Base
validates_presence_of :ISBN
validates_presence_of :title
validates_presence_of :description
validates_presence_of :author


validates :ISBN, uniqueness: true
	has_paper_trail on: [:update, :create], :ignore => [:title, :author, :description, :ISBN]

	has_many :checkouts
	has_many :users, :through => :checkouts

	def self.search(query)
		where("title like ?", "%#{query}%")
	end

	

end
