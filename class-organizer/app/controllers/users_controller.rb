class UsersController < ApplicationController
  def new
  end

  def create
    new_user = User.new(user_params)
    if new_user.valid?
      new_user.save
    else
      redirect_to '/users/new'
    end
  end

  def show
  end

  def destroy
  end
  
  def user_params
    params.require(:user).permit(:password, :password_confirmation, :email)
  end
end
