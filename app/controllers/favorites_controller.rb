class FavoritesController < ApplicationController

  def create
    @driver = Driver.find(params[:driver_id])
    @favorite = current_user.favorites.build(driver: @driver)

    if @favorite.save
      redirect_to root_url, notice: "Favorited"
    else
      redirect_to root_url, alert: "Failed to favorite"
    end
  end

  def destroy
    @favorite = current_user.favorites.find_by!(driver_id: params[:driver_id])
    @favorite.destroy
    redirect_to root_url, notice: "Unfavorited"
  end

end
