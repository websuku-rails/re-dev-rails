class JoinsController < ApplicationController
  before_action :authenticate_user!

  def create
    @event = Event.find(params[:event_id])
    @join = current_user.joins.build(event: @event)

    if @join.save
      redirect_to events_url, notice: "参加申請したやで"
    else
      redirect_to events_url, alert: "だめやで"
    end
  end

  def destroy
    @join = current_user.joins.find_by!(event_id: params[:event_id])
    @join.destroy
    redirect_to events_url, notice: "参加取り消しやで"
  end
end
