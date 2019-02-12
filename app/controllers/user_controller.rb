class UserController < ApplicationController

  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @event = Event.where(user_id: @user)
  end
end
