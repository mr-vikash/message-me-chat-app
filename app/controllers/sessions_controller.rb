class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(user_name: params[:session][:user_name])
    if user && user.authenticate(params[:session][:password])
      flash[:success] = "You have logged in successfully"
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash.now[:error] = "Username or Password is incorrect"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You logged out successfully"
    redirect_to login_path
  end
end