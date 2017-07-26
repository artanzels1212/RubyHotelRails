class GoogleSessionsController < ApplicationController
  def create
    booker = Booker.from_omniauth(request.env["omniauth.auth"])
    session[:booker_id] = booker.id
    redirect_to root_path
  end

  def destroy
    session[:booker_id] = nil
    redirect_to root_path
  end
end
