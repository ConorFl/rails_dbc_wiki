class ResourcesController < ApplicationController
	def new
	end
	def create
		@resource = Resource.new(params[:resource])
		@user = User.find(session[:current_user_id])
		if @resource.save 
			@user.resources << @resource
			render :index
		else
			redirect_to new_resource_path
		end
	end

	def show
		@resource = Resource.find(params[:id])
	end
	def index
	end

end
