require 'rails_helper'

RSpec.describe "Drivers", type: :request do
  describe "GET api/drivers" do

    before { @drivers = FactoryGirl.create_list(:driver, 2) }

    it "if getting drivers list" do
      # When access GET api/drivers 
      get api_drivers_path

      # Check status code 
      expect(response.status).to eq 200

      # Check JSON
      json = JSON.parse(response.body)
      expect(json.size).to    eq @drivers.count
      expect(json[0]["id"]).to eq @drivers[0].id
      expect(json[1]["id"]).to eq @drivers[1].id
      
      # and other detailed attributes...
    end

  end
end
