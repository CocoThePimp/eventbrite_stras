class EventController < ApplicationController

  before_action :authenticate_user!, only: [:show]
  before_action :is_admin, only: [:edit, :destroy]

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
    @i = false
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if  @event.update(title: params[:title], 
                      description: params[:description], 
                      start_date: params[:start_date], 
                      duration: params[:duration], 
                      location: params[:location], 
                      price: params[:price],
                      user_id: current_user.id)
      # flash[:info] = "Event successfully modified! "
      redirect_to event_path(@event.id)
    else 
      puts "@" * 60
      puts "@" * 60
      puts @event.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to root_path
  end

  def authenticate_admin
    current_user  == Event.find(params[:id]).user ? true : false
  end

end
