class User < ActiveRecord::Base
	validates :first_name, presence: true
	validates :photo, presence: true
	validates :role, presence: true

	def self.students
		where(role: "student")
	end
end
