require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../rooms.rb')

class TestCustomer < Minitest::Test

  def setup

		@customer = Customer.new("Sara")

  end

	def test_room_numbers()
assert_equal("Sara", @customer.name)

	end

end 
