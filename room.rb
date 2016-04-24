class Room
attr_reader :sqft, :window_count
attr_accessor :name

def initialize(args={})
	@name = args[:name] || "bedroom"
	@sqft = args[:sqft] || 120
	@window_count = args[:window_count]
end

end
