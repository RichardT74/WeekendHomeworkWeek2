require('minitest/autorun')
require('minitest/rg')

require_relative("../rooms.rb")
# require_relative("../songs.rb")
# require_relative("../guests.rb")



class TestRoom < MiniTest::Test


	def setup()

		@room = Room.new("Red Room")
		@room2 = Room.new("Green Room")

		# @customer = Customer.new("Sara")

end

def test_pub_name()
	assert_equal("Green Room", @room2.name)

end

def test_capacity()
assert_equal(0, @room.capacity)
end

def test_move_customers_to_room
	@room.take_to_room(@customer)


end


#now moving customer into room, but I will need to make a hash of the customer then put them into room (capacity) array.
