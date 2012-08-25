module Emojify
  def self.included(klass)
    klass.extend ClassMethods
  end

  def emojify(text)
    text.gsub(/:(.*?):/) do |word| 
      "<image src='#{Emojify::Config.image_directory}/#{$1}.png' height='#{Emojify::Config.height}' width='#{Emojify::Config.width}'/>"
    end
  end

  module ClassMethods
    def emoji(options={})
      Config.image_directory  = options[:directory]
      Config.width            = options[:width]
      Config.height           = options[:height]
    end

  end

  class Config
    class << self
      attr_writer :image_directory, :width, :height
      def image_directory
        @image_directory || '/assets/emojis'
      end

      def width
        @width || 20
      end

      def height
        @height || 20
      end
    end
  end

end
