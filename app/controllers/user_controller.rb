class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
    @event = Event.where(user_id: @user)
  end
end
