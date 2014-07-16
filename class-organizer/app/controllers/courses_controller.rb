class CoursesController < ApplicationController
  before_action :require_login
  
  def new
  end
  
  def create
    if @user.courses.create(params.require(:course).permit(:title, :instructor, :code, :location, :section, :credits))
      redirect_to user_path(@user)
    else
      redirect_to '/courses/new'
    end
  end
  
end
