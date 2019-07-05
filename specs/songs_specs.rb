require('minitest/autorun')
require('minitest/rg')
# require_relative('../customer.rb')
# require_relative('../rooms.rb')
require_relative('../songs.rb')


class TestSongs < Minitest::Test

  def setup()

		@songs = Songs.new("Ain't Nobody")
		@songs1 = Songs.new("Love Me Do")
end

def test_song_name()
	assert_equal("Ain't Nobody", @songs.name)

end

end
