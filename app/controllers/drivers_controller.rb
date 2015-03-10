class DriversController < ApplicationController
  def index
    @drivers = Drivers.all
    render json: @drivers
  end
end
