module Api
  class DriversController < ApplicationController

    def index
      @drivers = Driver.all
      render json: @drivers
    end

    def show
      driver = Driver.find_by_id(params[:id])
    end

    def search
      place = params[:place]
      @drivers = Driver.where("place like '%"+place+"%'")
      render json: @drivers
    end

  end
end
