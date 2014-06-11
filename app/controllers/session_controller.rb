class SessionController < ApplicationController
	def new
	end

	def create
		if params[:is_admin] == "1"
			admin = Admin.authenticate(params[:username], params[:password])
			if admin
				session[:user] = admin
				redirect_to root_url, :notice => "Welcome #{admin.username}"
			else
				redirect_to new_session_path, :notice => "Invalid Admin username or password"
			end
		else
      # its a regular voter
      user = User.authenticate(params[:username], params[:password])
      if user
      	session[:user] = user
      	redirect_to root_url, :notice => "Welcome #{user.username}"
      else
      	redirect_to new_session_path, :notice => "Invalid username or password"
      end
  end
end

def destroy
	session[:user] = nil
	redirect_to root_url, :notice => "You have Logged out.!!"
end
end
