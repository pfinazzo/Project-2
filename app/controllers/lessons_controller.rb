class LessonsController < ApplicationController

  def index 
    if current_user.teacher
      @lessons = current_user.lessons
    else
      @lessons = Lesson.all
    end
  end

  def show 
   
  end 

  def new 
    @lesson = Lesson.new
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

private

  def lesson_params 
    params.require(:lesson).permit(:instrument, :time, :date, :location, :content)
  end

end
