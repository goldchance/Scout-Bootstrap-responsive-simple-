class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(email: params[:email])

		if user
			if user.password == params[:password]
				session["user_id"] = user.id
				redirect_to root_url, notice: "Welcome Back!"
			else
				redirect_to root_url, notice: "Wrong Password!"
			end
		else
			redirect_to root_url, notice: "Unknown email"
		end
	end

	def destroy
		session.delete("user_id")

		redirect_to root_url, notice: "You have signed out"
	end
	
end