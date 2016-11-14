class Stat < ActiveRecord::Base
	validates :student_id, presence: true
end
