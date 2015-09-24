class Book < ActiveRecord::Base
	include ActiveModel::Dirty

	before_update :write_history

	def self.search(query)
		where("title like ?", "%#{query}%")
	end

	private
	def write_history
		self.changes.each do |attribute_name, values|
			before_value = values[]
end
