
class Truck
  include Checker
  attr_reader :space, :owner, :max_capacity

  def initialize(max_capacity)
    @space = []
    @max_capacity = max_capacity
  end
end
