class StaticPagesController < ApplicationController
	def home_guest
		@sections = Section.alphabetical
		@famous_students = User.famous
		@six_pietri = User.six_pietri
		@six_trillin = User.six_trillin
		@user_count = User.total
	end
end
