class SheltersController < ApplicationController
	def new
	end
	def create
		@shelter = Shelter.new(params[:shelter])
		@user = User.find(session[:current_user_id])
		if @shelter.save 
			@user.shelters << @shelter
			render :index
		else
			redirect_to new_shelter_path
		end
	end

	def show
		@shelter = Shelter.find(params[:id])
	end

	def index
	end

end
