module Checker

  def full?
    if @space.length == @max_capacity
      true
    else
      false
    end
  end

  def add_one(person)
    if @space.length < @max_capacity
      @space << person
    else
      raise MaxCapacityError, "At Max Capacity!"
    end
  end

  def remove(full_name = nil)
    if full_name == nil
      @space.pop
    else
      @space.reject!{ |n| n.full_name == full_name }
    end
  end
end

class MaxCapacityError < StandardError
end
