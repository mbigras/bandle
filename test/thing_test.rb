require "test_helper"

class ThingTest < Minitest::Test
  def test_it_can_represent_itself_as_a_string
    assert_equal 'thing', "#{Bandle::Thing.new('thing')}"
  end
end
