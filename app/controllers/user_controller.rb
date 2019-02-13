class UserController < ApplicationController

  before_action :authenticate_user!
  before_action :only_see_your_own_page


  def show
    @user = User.find(params[:id])
    @event = Event.where(user_id: @user)
  end


  def only_see_your_own_page
    @user = User.find(params[:id])
    if current_user != @user
      redirect_to root_path, notice: "AHAH Bien essayé ! mais non…"
    end
  end

end
