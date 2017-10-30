class LessonsController < ApplicationController

  def index 
    @lessons = Lesson.all
  end

  def new 
    @lesson = Lesson.new
  end 

  def show 
    @lesson = Lesson.find_by user_id:
  end

end

