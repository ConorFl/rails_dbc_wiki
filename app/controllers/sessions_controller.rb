class SessionsController < ApplicationController

	def new
		@user_session = User.new
	end
	def create
		@user = User.find_by_name(params[:session][:name])
		if @user && @user.password == params[:session][:password]
			session[:current_user_id] = @user.id
			redirect_to posts_path
		else
			flash[:notice] = "Invalid login :("
			render :new
		end
	end
	def destroy
		session.clear
		redirect_to root_path
	end

end
