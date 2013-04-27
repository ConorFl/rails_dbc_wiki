class PostsController < ApplicationController
	def new
	end

	def create
		@post = Post.new(params[:post])
		@user = User.find(session[:current_user_id])
		if @post.save 
			@user.posts << @post
			render :show 
		else
			redirect_to new_post_path
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def index
	end

end
