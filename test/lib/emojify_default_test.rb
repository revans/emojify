require 'minitest/autorun'
require 'minitest/pride'

require './lib/emojify'

class EmojifyDefaultTest < MiniTest::Unit::TestCase
  include Emojify

  def test_replacing_keyword
    assert_equal "Keywords <image src='images/emojis/smile.png'/>", emojify("Keywords :smile:")
  end

  def test_replacing_with_numbers
    assert_equal "Keywords <image src='images/emojis/+1.png'/>", emojify("Keywords :+1:")
  end

  def test_replacing_multiple_words
    assert_equal "Keywords <image src='images/emojis/smile.png'/> when <image src='images/emojis/rain.png'/> and <image src='images/emojis/laughter.png'/> today",
      emojify("Keywords :smile: when :rain: and :laughter: today")
  end
end

