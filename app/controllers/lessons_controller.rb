class LessonsController < ApplicationController

  def index 
    @lessons = Lesson.all
  end

  def new 
    @lesson = Lesson.new
  end 

  def create
    @lesson = Lesson.new(user_params)
    if @lesson.save
      lesson[:user_id] = @lesson.id
      flash[:notice] = "You have successfully created a new lesson!"
      redirect_to lesssons_path
    else
      render :new
    end
  end


end

