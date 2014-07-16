class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]
  
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
    if @user.id != params[:id].to_i
      redirect_to '/'
    end
    @courses = @user.courses
  end

  def destroy
  end
  
  def user_params
    params.require(:user).permit(:password, :password_confirmation, :email)
  end
end
