class VansController < ApplicationController

	def index
		@vans = Van.all
	end

	def show
		@van = Van.find(params[:id])
	end
	
	def new
		@van = Van.new
	end

	def create
		@van = Van.new(van_params)

		if @van.save
			redirect_to @van, notice: 'van was successfully created.'
		else
			render :new
		end
	end

	def destroy
		@van = Van.find(params[:id])
		@van.destroy
		redirect_to cocktails_path
	end

	private

	def van_params
		params.require(:van).permit(:name, :photo)
	end
end