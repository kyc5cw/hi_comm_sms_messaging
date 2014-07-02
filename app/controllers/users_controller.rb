class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		@user.active = true
		@user.phone_number.phony_formatted!(:format => :international, :normalize => user_params["country"], :spaces => '')

		if @user.save
			redirect_to root_path
		else
			render :new
		end
	end

	private

	def user_params
		params.require(:user).permit(:name, :phone_number, :country)
	end

end
