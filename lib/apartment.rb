require_relative "dwelling"
require_relative "occupant"
require_relative 'checker'
require 'pry'
class Apartment < Dwelling
  include Checker
  attr_accessor :add_roomate, :remove_roomate, :space, :person
  attr_reader :lease_start_date, :lease_end_date, :rent, :max_capacity

  def initialize(address, city, state, zip_code, rent,
      lease_start_date, lease_end_date, max_capacity = 5)
    super(address, city, state, zip_code)
    @rent = rent
    @lease_start_date = lease_start_date
    @lease_end_date = lease_end_date
    @max_capacity = max_capacity
    @space = []
  end
end
