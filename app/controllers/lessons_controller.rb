class LessonsController < ApplicationController

  def index 
    if current_user.teacher
      @lessons = current_user.lessons
      @booked_lessons = Lesson.all.booked
      @available_lessons = Lesson.all.available
    else
      @lessons = Lesson.all
      @booked_lessons = Lesson.all.booked
      @available_lessons = Lesson.all.available
  end
end

  def show 
   @lesson = Lesson.find(params[:id]) 
  #  @creator = User.where(id: lesson_params[:user_id])
  end 

  def new 
    @lesson = Lesson.new
    # @creator = current_user.name
  end 

  def create
    # @creator = current_user.name
    @lesson = Lesson.new(lesson_params)
    @lesson.user = current_user
    if @lesson.save
      redirect_to lessons_path
    else
      render :new
    end
  end
 
  def enroll 
    redirect_to lessons_path
  end

private

  def lesson_params 
    params.require(:lesson).permit(:instrument, :time, :date, :location, :content, :instructor)
  end

end
