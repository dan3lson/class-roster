class UsersController < ActionController::Base
	def students
		@students = User.students
		@correct_student = @students.sample
		@students = @students.where.not(id: @correct_student.id)

		render json: { students: @students, correct_student: @correct_student }
	end
end
