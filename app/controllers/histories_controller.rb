class HistoriesController < ApplicationController

  def create
    @driver = Driver.find(params[:driver_id])
    @favorite = current_user.favorites.build(driver: @driver)

    if @favorite.save
      redirect_to root_url, notice: "Call Ends"
    else
      redirect_to root_url, alert: "Call Failed"
    end
  end

end
