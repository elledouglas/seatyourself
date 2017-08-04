class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
      @current_user ||= User.find(session[:id]) if session[:id]
    end
    helper_method :current_user
  end

<<<<<<< HEAD
#   def current_user ||= User.find(session[:user_id]) if session[:user_id]
#   end
#   helper_method :current_user
#   # (you can call helper_method anything you want. It could be :foo)
# end
=======
>>>>>>> 75169459d513b89e09a42982385340562914d524

  def authenticate
    unless current_user
     flash[:alert] = ["MUST be logged in!"]
     redirect_to root_path
    end
  end
