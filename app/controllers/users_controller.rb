class UsersController < ApplicationController
	def new
		@user = User.new		
	end
	def create
		@user = User.new(user_params)
		if @user.save
			puts "sssssssssssssssssssssssssssssssssssss"
			redirect_to users_url
		else 
			render new_user_url
		end
	end
	def index
		@users = User.all
	end

	def edit
		@user = User.find(params[:id])
	end
	def update
		@user = User.find(params[:id])
		@user.update_attributes(user_params)
		redirect_to users_url
	end
	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_url
		
	end

	private

	def user_params
		params.require(:user).permit!
	end

end
