require 'minitest/autorun'
require 'minitest/pride'

require './lib/emojify'

class EmojifyTest < MiniTest::Unit::TestCase
  include Emojify
  emoji directory: 'public/images/emojify', width: 25, height: 25

  def test_replacing_keyword
    assert_equal "Keywords <image src='public/images/emojify/smile.png' height='25' width='25'/>", emojify("Keywords :smile:")
  end

  def test_replacing_multiple_words
    assert_equal "Keywords <image src='public/images/emojify/smile.png' height='25' width='25'/> when <image src='public/images/emojify/rain.png' height='25' width='25'/> and <image src='public/images/emojify/laughter.png' height='25' width='25'/> today",
      emojify("Keywords :smile: when :rain: and :laughter: today")
  end
end

