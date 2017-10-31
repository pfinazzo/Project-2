class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  private
  
    # Make the current_user method available to views, not just controllers!
    helper_method :current_user
  
    def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def current_user_params
      params.require(:current_user).permit(:name, :email, :teacher, :image, :content)
    end
    
  
end
