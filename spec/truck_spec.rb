require 'spec_helper'

describe Truck do
  let(:fred) { Occupant.new("Fred", "Freeloader") }
  let(:bob) { Occupant.new("Bob", "Socks") }
  let(:truck) {Truck.new(2) }


  describe ".new" do
    it "should be initialized with a max capacity" do
      expect(truck.max_capacity).to eq(2)
    end

    it "should contain a bed for space" do
      expect(truck.space).to be_a(Array)
    end
  end

  describe "#full?" do
    it "should check to see if the truck is full" do
      truck.add_one(fred)
      expect(truck.full?).to eq(false)
      truck.add_one(bob)
      expect(truck.full?).to eq(true)
    end
  end

  describe"#add_one" do
    it "should have a method to add a box" do
      truck.add_one(fred)
      expect(truck.space.length).to eq(1)
      truck.add_one(bob)
      expect(truck.space.length).to eq(2)
    end
  end

  describe"#remove" do
    it "should have a method to remove a box" do
      truck.add_one(fred)
      truck.add_one(bob)
      expect(truck.space.length).to eq(2)
      truck.remove
      expect(truck.space.length).to eq(1)
    end

    it"should remove all an occupants boxes if their name is supplied" do
      truck.add_one(fred)
      truck.add_one(fred)
      truck.remove("Fred Freeloader")
      expect(truck.space.include?(fred)).to be(false)
    end
  end
end
