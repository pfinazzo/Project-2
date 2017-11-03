class LessonsController < ApplicationController

  def index 
    if current_user.teacher
      @lessons = current_user.lessons
      @booked_lessons = User.find(current_user.id).lessons.booked
      @available_lessons = Lesson.all.available
    else
      @lessons = Lesson.all
      @booked_lessons = User.find(current_user.id).lessons.booked
      @available_lessons = Lesson.all.available
  end
end

def destroy 
  @lesson = Lesson.find(params[:id]).destroy
  redirect_to lessons_path
end

  def show 
   @lesson = Lesson.find(params[:id]) 
  #  @creator = User.where(id: lesson_params[:user_id])
  end 

  def new 
    @lesson = Lesson.new
    # @creator = current_user.name
  end 

  def edit
    @lesson = Lesson.find(params[:id])
  end
  
  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update_attributes(lesson_params)
      redirect_to lesson_path
    else
      render :edit
    end
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.user = current_user
    if @lesson.save
      redirect_to lessons_path
    else
      render :new
    end
  end
 
  def enroll 
    @lesson = Lesson.find(params[:id])
    @lesson.update_attributes(student: current_user)
    redirect_to lessons_path
  end

  def unenroll 
    @lesson = Lesson.find(params[:id])
    @lesson.update_attributes(student: nil)
    redirect_to lessons_path
  end
private

  def lesson_params 
    params.require(:lesson).permit(:instrument, :time, :date, :location, :content, :instructor)
  end

end
