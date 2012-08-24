require 'minitest/autorun'
require 'minitest/pride'

require './lib/emojify'

class EmojifyTest < MiniTest::Unit::TestCase
  include Emojify
  emojify_image_dir 'public/images/emojify'

  def test_replacing_keyword
    assert_equal "Keywords public/images/emojify/smile.png", emojify("Keywords :smile:")
  end

  def test_replacing_multiple_words
    assert_equal "Keywords public/images/emojify/smile.png when public/images/emojify/rain.png and public/images/emojify/laughter.png today",
      emojify("Keywords :smile: when :rain: and :laughter: today")
  end
end

