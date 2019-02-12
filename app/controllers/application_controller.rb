class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  def application 
    @user = User.find(params[:id])
  end
  
end
