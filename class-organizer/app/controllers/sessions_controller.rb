class SessionsController < ApplicationController
  def signin
  end
  
  def create
    user = User.find_by_email(params[:email])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user.id)
    else
      redirect_to '/signin'
    end
  end
  
  def signout
    session[:user_id] = nil
    redirect_to '/'
  end
  
end
