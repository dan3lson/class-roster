class Section < ActiveRecord::Base
	belongs_to :org
	has_many :users

	validates :name, presence: true

	def self.alphabetical
		order("name ASC")
	end

	def total
		users.count
	end

	def folder_name
		self.name.downcase.gsub(" ", "-")
	end
end
