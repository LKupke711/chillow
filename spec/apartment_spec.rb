require 'spec_helper'

describe Apartment do
  lease_start_date = Date.parse("2015/09/01")
  lease_end_date = Date.parse("2016/08/31")
  let(:quincy) { Occupant.new("Quincy", "Jones") }
  let(:james) { Occupant.new("James", "Joyce") }
  let(:tom) { Occupant.new("Tom", "Bot") }
  let(:apt) { Apartment.new("10 Durham St", "Boston", "MA", "02115", 500, lease_start_date, lease_end_date, 2) }

  describe ".new" do
    it "should be a Dwelling" do
      expect(apt).to be_a(Dwelling)
    end

    it "should have a rent value" do
      expect(apt.rent).to eq(500)
    end

    it "should take the lease start date as an argument" do
      expect(apt.lease_start_date).to be < apt.lease_end_date
    end

    it "should take an optional argument for max capacity" do
      expect(apt.max_capacity).to eq(2)
    end
  end

  describe "#add_one" do
    it "should add a roomate to the apartment" do
      apt.add_one(quincy)
      expect(apt.space.length).to eq(1)
      apt.add_one(james)
      expect(apt.space.length).to eq(2)
      expect { apt.add_one(tom) }.to raise_error(MaxCapacityError)

    end
  end

  describe "#remove" do
    it "should remove a roomate from the apartment" do
      apt.add_one(quincy)
      expect(apt.space.length).to eq(1)
      apt.remove
      expect(apt.space.length).to eq(0)
    end
  end

  describe "#full?" do
    it "should check to see if the apartment is full" do
      apt.add_one(quincy)
      expect(apt.full?).to eq(false)
      apt.add_one(james)
      expect(apt.full?).to eq(true)
    end
  end
end
