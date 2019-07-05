class Room

attr_reader :name

def initialize(name)
	@name = name
	@capacity = []

end

def pub_name
	@room.name
end

def capacity()

	return @capacity.size

end


end
