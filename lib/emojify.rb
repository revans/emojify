module Emojify
  def self.included(klass)
    klass.extend ClassMethods
  end

  def emojify(text)
    text.gsub(/:(.*?):/) { |word| "<image src='#{Emojify::Config.image_directory}/#{$1}.png'/>" }
  end

  module ClassMethods
    def emojify_image_dir(dir)
      Config.image_directory = dir
    end

    def dir
      Config.image_directory
    end
  end

  class Config
    class << self
      attr_writer :image_directory
      def image_directory
        @image_directory || 'images/emojis'
      end
    end
  end

end
