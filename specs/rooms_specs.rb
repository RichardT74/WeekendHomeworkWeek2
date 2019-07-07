require('minitest/autorun')
require('minitest/rg')

require_relative("../rooms.rb")
require_relative("../songs.rb")
require_relative("../customer.rb")



class TestRoom < MiniTest::Test


	def setup()

		@room = Rooms.new("Red Room", 20, 5)
		@room2 = Rooms.new("Green Room", 20, 5)

		@customer = Customer.new("Sara")

    @songs = Songs.new("Ain't Nobody")
end

def test_pub_name()
	assert_equal("Green Room", @room2.name)
end


def test_guests_array
	assert_equal([], @room.capacity)
end

def test_num_of_guests
	assert_equal(0, @room.num_of_guests)
end


def test_put_in_room
@room.put_in(@customer)
@room.put_out(@customer)
	assert_equal(0, @room.num_of_guests)
end



def test_music_array
assert_equal([], @room.music)
end


def test_num_from_array
	assert_equal(0, @room.music_list)
end

def test_put_song_in_room
	@room.add_track(@songs)
	assert_equal(1, @room.music_list)
end
# def test_song_in_room
# 	@room.put_in(@songs)
# 	assert_equal(0, @room.music)
# end


end

# def test_move_customers_to_room
# 	@room.take_to_room(@capacity)
# assert_equal(1, @room.capacity)
# end






# def test_bear_can_take_fish_from_river
#     @bear.take_fish_from_river(@river)
#     assert_equal(1, @bear.food_count)
#     assert_equal(2, @river.number_of_fishes)
#   end



#now moving customer into room, but I will need to make a hash of the customer then put them into room (capacity) array.
