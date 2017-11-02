class UsersController < ApplicationController

  def show
    @user = current_user 
  end 

  def teachers 
    @teachers = User.teachers
  end

  def students 
    @students = User.students
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "You have successfully signed up!"
      redirect_to profile_path
    else
      render :new
    end
  end

  def edit
    @user = current_user 
  end

  def update

  end

  private 

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :teacher, :image, :content)
  end
end
