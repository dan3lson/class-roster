class OrgsController < ApplicationController
	def index
		@orgs = Org.alphabetical
	end
end
