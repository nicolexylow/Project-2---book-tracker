class SessionController < ApplicationController
    def new
    end
  
    def create
      # find the user with this email address
      user = User.find_by :email => params[:email]
  
      # if the password matches
      if user.present? && user.authenticate(params[:password])
        # remember this user
        session[:user_id] = user.id
        redirect_to root_path
      # else
      else
        #show them the login form
        flash[:error] = "Invalid email or password"
        redirect_to login_path
      end
  
    end
  
    def destroy
      session[:user_id] = nil
      redirect_to root_path
    end
  end