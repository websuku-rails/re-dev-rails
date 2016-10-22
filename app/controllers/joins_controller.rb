class JoinsController < ApplicationController
  before_action :authenticate_user!

  def create
    @event = Event.find(params[:id])
    @user_prof = UserProf.find(current_user.id)
    @join = @user_prof.joins.new(event: @event)

    if @join.save
      redirect_to events_url, notice: "参加申請したやで"
    else
      redirect_to events_url, alert: "だめやで"
    end
  end

  def destroy
    @user_prof = UserProf.find(current_user.id)
    @join = @user_prof.joins.find_by!(event_id: params[:id])
    @join.destroy
    redirect_to events_url, notice: "参加取り消しやで"
  end
end
