class User < ActiveRecord::Base
	belongs_to :section

	validates :first_name, presence: true
	validates :photo, presence: true
	validates :role, presence: true

	def self.famous
		section = Section.find_by(name: "Famous People")
		where(section: section)
	end

	def self.six_trillin
		section = Section.find_by(name: "6 Trillin")
		where(section: section)
	end
end
