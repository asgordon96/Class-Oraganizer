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
  
  def edit
    @course = Course.find(params[:id])
    if @course.nil? or @course.user != @user
      return_404
    end
  end
  
  def update
    course = Course.find(params[:id])
    course.update(params.require(:course).permit(:title, :instructor, :code, :location, :section, :credits))
    redirect_to user_path(@user)
  end
  
  def show
    @course = Course.find(params[:id])
    if @course.user == @user
    end
  end
  
  def icons
    send_file 'vendor/assets/icons-sa75ce98b2b.png', type: 'image/png'
  end
  
  def icons2
    send_file 'vendor/assets/icons-2x-s9034954e6d.png', type: 'image/png'
  end
  
end
