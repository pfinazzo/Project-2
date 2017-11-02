class UsersController < ApplicationController

  def specialshow
    @user = current_user 
  end 

  def show 
   @user = User.find(params[:id])
   if current_user.teacher
    @lessons = current_user.lessons
    @booked_lessons = User.find(current_user.id).lessons.booked
    @available_lessons = Lesson.available
  else
    @lessons = Lesson.all
    @booked_lessons = User.find(current_user.id).lessons.booked
    @available_lessons = Lesson.available.where(user: @user)
end
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
      redirect_to sessions_new_path
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
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :teacher, :image, :content, :user_id)
  end
end
