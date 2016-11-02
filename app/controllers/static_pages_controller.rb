class StaticPagesController < ApplicationController
	def home_guest
		@sections = Section.alphabetical
		@famous_students = User.famous
		@six_trillin = User.six_trillin
	end
end
