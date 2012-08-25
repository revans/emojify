require 'rails'

module Emojify
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      desc "This Generator installs the Emoji Images to images/emojis"
      source_root File.expand_path('../../../../../vendor/assets/images', __FILE__)

      def copy_images
        copy_to_dir = 'vendor/assets/images/emojis'
        say_status("copying",   "Emojis to #{copy_to_dir}", :green)
        directory "emojis",     copy_to_dir
        copy_file "stucco.png", "#{copy_to_dir}/stucco.png"
      end

    end
  end
end
