class DriversController < ApplicationController

  def index
    if !user_signed_in?
      redirect_to new_user_session_path
    end
    @drivers = Driver.all
    @fav_drivers = current_user.drivers
  end

end
