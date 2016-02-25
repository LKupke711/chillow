module Checker

  def space
    space = []
  end

  def full?
    if space.length == max_capcity
      true
      raise MaxCapcity, "We are at max capacity!"
    end
  end

end

class MaxCapcity < StandardError
end
