class Org < ActiveRecord::Base
	has_many :sections

	validates :name, presence: true

	def self.alphabetical
		order("name ASC")
	end

	def num_sections
		sections.count
	end
end
