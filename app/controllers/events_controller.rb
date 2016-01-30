class EventsController < ApplicationController
  before_action :find_event, only: [:show, :edit, :update, :destroy]
  
  def index
    @event = Event.all.order("created_at DESC")
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if @event.save!
      # redirect_to events_path
      js_alert("hahahhahah", events_path)
    else
      render :new
    end
  end

  def edit    
  end

  def update
    if @event.update!(event_params)
      redirect_to events_path
    else
      render :edit
    end
  end

  def destroy
    @event.destroy!
    redirect_to events_path
  end

  def search
    redirect_to root_path
  end

  private

  def event_params
    params.require(:event).permit(:link, :title, :start_date_time, :end_date_time, :intro)
  end

  def find_event
    @event = Event.find(params[:id])
  end
end