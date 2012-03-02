require "rails/generators/named_base"

module Coco
  module Generators
    class AssetsGenerator < ::Rails::Generators::NamedBase
      source_root File.expand_path("../templates", __FILE__)

      def copy_co
        template "javascript.js.co", File.join('app/assets/javascripts', class_path, "#{file_name}.js.co")
      end
    end
  end
end
