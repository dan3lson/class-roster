class StatsController < ActionController::Base
	def update
		@student = User.find(params[:student_id])
		@score = params[:score]
		@stat = Stat.where(student_id: @student.id).first_or_initialize

		@score == "correct" ? @stat.correct += 1 : @stat.incorrect += 1

		if @stat.save
			render json: {
				results: "Success: #{@student.first_name} stat updated."
			}
		else
			render json: {
				results: "ERROR: #{@student.first_name} stat update failed."
			}
		end
	end
end
