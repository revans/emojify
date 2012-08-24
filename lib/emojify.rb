module Emojify
  def emojify(text)
    text.gsub(/:(.*?):/) { |word| "images/emojify/#{$1}.png" }
  end
end
