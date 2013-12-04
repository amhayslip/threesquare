class LocationsController < ApplicationController

	def show_all
		@locations = Location.all
	end

	def show
		@location = Location.find(params[:id])
	end

	def new
		@location = Location.new
	end

	def create
		@location = Location.new(location_params)
		@location.save
		redirect_to root_path
	end

	def edit
		@location = Location.find(params[:id])
	end

	def update
		@location = Location.find(params[:id])
		@location.update(location_params)
		redirect_to root_path
	end

	def destroy
		@location = Location.find(params[:id])
		@location.destroy
		redirect_to root_path
	end



	private
	def location_params
		params.require(:location).permit(:name, :category, :neighborhood, :site_url, :image_url, :review)
	end

end
