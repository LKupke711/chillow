require 'spec_helper'

describe House do
  let(:house) { House.new("33 Harrison Ave", "Boston", "MA", "03149", 100000) }

  describe ".new" do
    it "should take an address as an argument" do
      expect(house.address).to eq("33 Harrison Ave")
    end

    it "should take the city as an argument" do
      expect(house.city).to eq("Boston")
    end

    it "should take the state as an argument" do
      expect(house.state).to eq("MA")
    end


    it "should take the zip code as an argument" do
      expect(house.zip_code).to eq("03149")
    end

    it "should take the asking_price as an argument" do
      expect(house.asking_price).to eq(100000)
    end

    it "should be a dwelling" do
      expect(house).to be_a(Dwelling)
    end
  end

end
