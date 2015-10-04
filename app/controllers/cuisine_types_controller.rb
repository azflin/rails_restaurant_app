class CuisineTypesController < ApplicationController

	def index
		@cuisine_types = CuisineType.all
	end
end
