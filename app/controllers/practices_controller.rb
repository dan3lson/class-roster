class PracticesController < ApplicationController
	def play
		@section = Section.find(params[:section_id])
	end
end
