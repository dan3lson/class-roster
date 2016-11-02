class Section < ActiveRecord::Base
	has_many :users

	validates :name, presence: true

	def self.alphabetical
		order("name ASC")
	end
	
	def total
		users.count
	end
end
