require 'spec_helper'

describe Box do
  let(:occupant) { Occupant.new("Joe", "Schmoe") }
  let(:box) { Box.new(occupant) }
  describe ".new" do
    it "should have an occupant as an owner"  do
      expect(box.owner).to be_a(Occupant)
    end
  end
end
