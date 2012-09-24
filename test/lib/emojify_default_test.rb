require 'minitest/autorun'
require 'minitest/pride'

require './lib/emojify'

class EmojifyDefaultTest < MiniTest::Unit::TestCase
  include Emojify

  def test_replacing_keyword
    assert_equal "Keywords <image src='/assets/emojis/smile.png' height='20' width='20'/>", emojify("Keywords :smile:")
  end

  def test_replacing_with_numbers
    assert_equal "Keywords <image src='/assets/emojis/+1.png' height='20' width='20'/>", emojify("Keywords :+1:")
  end

  def test_replacing_multiple_words
    assert_equal "Keywords <image src='/assets/emojis/smile.png' height='20' width='20'/> when <image src='/assets/emojis/rain.png' height='20' width='20'/> and <image src='/assets/emojis/laughter.png' height='20' width='20'/> today",
      emojify("Keywords :smile: when :rain: and :laughter: today")
  end
end

