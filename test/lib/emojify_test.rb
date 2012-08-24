require 'minitest/autorun'
require 'minitest/pride'

require './lib/emojify'

class EmojifyTest < MiniTest::Unit::TestCase
  include Emojify

  def test_replacing_keyword
    assert_equal "Keywords images/emojify/smile.png", emojify("Keywords :smile:")
  end

  def test_replacing_multiple_words
    assert_equal "Keywords images/emojify/smile.png when images/emojify/rain.png and images/emojify/laughter.png today",
      emojify("Keywords :smile: when :rain: and :laughter: today")
  end

end
