class StaticPagesController < ApplicationController
	def home_guest
		@students = User.students
	end
end
