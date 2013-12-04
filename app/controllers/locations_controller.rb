class LocationsController < ApplicationController

	def show_all
		@locations = Location.all
	end

	def show
		location_id = params[:id]
		@location = Location.find_by_id(location_id)
	end

	def new
		@location = Location.new
	end

	def create
		@location = Location.new(location_params)
		@location.save
		redirect_to root_path
	end

	private
	def location_params
		params.require(:location).permit(:name, :category, :neighborhood, :site_url)
	end

end
