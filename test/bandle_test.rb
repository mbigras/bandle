require "test_helper"

class BandleTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Bandle::VERSION
  end
end
