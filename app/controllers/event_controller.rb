class EventController < ApplicationController
  def index
    @event = Event.all
  end

  def new
    @event = Event.new
  end

  def create 
    @event = Event.new(title: params[:title], 
                        description: params[:description], 
                        start_date: params[:start_date], 
                        duration: params[:duration], 
                        location: params[:location], 
                        price: params[:price],
                        user_id: current_user.id)
    if @event.save
      redirect_to '/'
    else
      puts @event.errors.full_messages
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
  end
end
