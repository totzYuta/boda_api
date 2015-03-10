module Api
  class DriversController < ApplicationController

    def index
      @drivers = Driver.all
      render json: @drivers
    end

  end
end
