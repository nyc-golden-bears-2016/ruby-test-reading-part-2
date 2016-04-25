require_relative "room"
require "pry"

class Apartment

  attr_accessor :monthly_rent
  attr_reader :rooms

  def initialize(args={})
    @number = args[:number]
    @monthly_rent = args[:monthly_rent] || 1000
    @rooms = [Room.new(name: 'kitchen', sqft: 120, window_count: 3), Room.new(name: 'lounge', sqft: 380, window_count: 2)]
  end

  def total_sqft
    @total = 0
    @rooms.each { |object| @total += object.sqft  }
    @total
  end

  def price_per_sqft
    @monthly_rent / total_sqft
    # price
    # price.to_f # this still won't show me the complete answer up to decimal points. It shoudl return 2.9, not 2.
    # sprintf('%.2f', price.to_d)
  end

  def room_count
    @rooms.length
  end

  def bedroom_count
    @bedrooms = 0
    @rooms.each do |object|
      if object.name == "bedroom"
        @bedrooms += 1
      end
    end
    @bedrooms
  end

end


new_apartment = Apartment.new(number: '4G', rooms: [Room.new(name: 'kitchen', sqft: 120, window_count: 3), Room.new(name: 'lounge', sqft: 380, window_count: 2)], monthly_rent: 1450)

# p new_apartment.rooms
# p new_apartment.monthly_rent
# p new_apartment.total_sqft
p new_apartment.price_per_sqft ## why won't this print 2.9? i've used to_f,
# p new_apartment.room_count
# p new_apartment.bedroom_count




