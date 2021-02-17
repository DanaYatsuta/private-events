class EventsController < ApplicationController
  before_action :require_login

  def new
    @event = current_user.created_events.build
  end

  def create
    @event = current_user.created_events.build(event_params)
    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def index
    @events = Event.all
  end

  private

  def require_login
    unless user_signed_in?
      flash[:error] = "You must be signed in for that action."
      redirect_to users_create_user_session_path
    end
  end

  def event_params
    params.require(:event).permit(:name, :description, :date)
  end
end
