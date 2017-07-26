class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_booker

  def current_booker
    @current_booker ||= Booker.find(session[:booker_id]) if session[:booker_id]
  end  
end
