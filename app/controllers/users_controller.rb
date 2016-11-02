class UsersController < ActionController::Base
	def students
		@section = Section.find_by(name: params[:section])
		@students = @section.users
		@correct_student = @students.sample
		@students = @students.where.not(id: @correct_student.id)

		render json: { students: @students, correct_student: @correct_student }
	end
end
