class SectionsController < ApplicationController
	def index
		@sections = Section.alphabetical
	end
end
