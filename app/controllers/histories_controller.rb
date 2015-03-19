class HistoriesController < ApplicationController

  def create
    @driver = Driver.find(params[:driver_id])
    @history = current_user.histories.build(driver: @driver)

    if @history.save
      redirect_to root_url, notice: "Call Ends"
    else
      redirect_to root_url, alert: "Call Failed"
    end
  end

end
