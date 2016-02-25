require 'spec_helper'

describe Dwelling do
  let(:dwelling) { Dwelling.new("33 Harrison Ave", "Boston", "MA", "03149") }

  describe ".new" do
    it "should take an address as an argument" do
      expect(dwelling.address).to eq("33 Harrison Ave")
    end

    it "should take the city as an argument" do
      expect(dwelling.city).to eq("Boston")
    end

    it "should take the state as an argument" do
      expect(dwelling.state).to eq("MA")
    end

    it "should take the zip code as an argument" do
      expect(dwelling.zip_code).to eq("03149")
    end
  end

end
