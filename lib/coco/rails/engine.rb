require 'rails/engine'

module Coco
  module Rails
    class Engine < ::Rails::Engine
      config.app_generators.javascript_engine :coco
    end
  end
end
