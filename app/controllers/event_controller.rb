class EventController < ApplicationController
  def index
    @event = Event.all
  end

  def new
  end

  def show
    @event = Event.find(params[:id])
  end
end
