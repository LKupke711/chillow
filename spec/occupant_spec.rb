require 'spec_helper'

describe Occupant do
  let(:bob) { Occupant.new("Bob", "Burgers") }

  describe ".new" do
    it "should take an arguments of first name" do
      expect(bob.first_name).to eq("Bob")
    end

    it "should take an argument of last name" do
      expect(bob.last_name).to eq("Burgers")
    end
  end

end
