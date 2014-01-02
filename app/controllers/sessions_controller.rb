class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_to user
		# sign in user and redirect to the user show page
	else 
		flash.now[:error] = "Invalid Email address / Password combination"
		render 'new'
		# create an error message and redirect to signin page
	end
end

	def destroy
		sign_out
		redirect_to root_path
	end
end
