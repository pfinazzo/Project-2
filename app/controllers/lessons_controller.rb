class LessonsController < ApplicationController

  def index 
    @lessons = Lesson.all
  end

  def new 
    @lesson = Lesson.new
  end 

  # def show 
  #   @lesson = Lesso
  # end

end

