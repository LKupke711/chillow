
class House < Dwelling
  attr_accessor :asking_price

  def initialize(address, city, state, zip_code, asking_price)
    super(address, city, state, zip_code)

    @asking_price = asking_price
  end
end
