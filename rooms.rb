class Rooms

	attr_reader :name, :capacity, :music

	def initialize(name, capacity, music)
		@name = name
		@capacity = []
		@music = []

	end

	def pub_name
		@room.name
	end

	def guests_array()
		return @capacity.length
	end

	def num_of_guests()
		return @capacity.length

	end

	def put_in(person)
		return @capacity.push(person)
	end

	def put_out(person)
		return @capacity.delete(person)
	end

	def song_array()
		return @music.length
	end
	def music_list
		return @music.length

	end


def add_track(track)
return@music.push(track)
end

	# def song_in_room(track)
	# return @music.push(track)
	# end
end

# def take_to_room(customer)
# 	@capacity << customer
# end
