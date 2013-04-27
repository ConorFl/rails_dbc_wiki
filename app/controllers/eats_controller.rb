class EatsController < ApplicationController
	def new
	end

	def create
		@eat = Eat.new(params[:eat])
		@user = User.find(session[:current_user_id])
		if @eat.save 
			@user.eats << @eat
			render :index
		else
			redirect_to new_eat_path
		end
	end

	def show
		@eat = Eat.find(params[:id])
	end

	def index
	end

end
