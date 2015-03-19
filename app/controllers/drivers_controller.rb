class DriversController < ApplicationController

  def index
    if !user_signed_in?
      redirect_to new_user_session_path
    else
      # Favorite Drivers
      if !Favorite.find_by_user_id(current_user.id).nil?
        favorites = Favorite.all
        @fav_drivers = []
        favorites.each do |fav|
          @fav_drivers << Driver.find(fav.driver_id) 
        end
      end
  
      # History of Drivers current_user used
      if !History.find_by_user_id(current_user.id).nil?
        histories = History.where(user_id: current_user.id)
        @his_drivers = []
        histories.each do |his|
          @his_drivers << Driver.find(his.driver_id) 
        end
      end
    end
    @drivers = Driver.all
  end

end
