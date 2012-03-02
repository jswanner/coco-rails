require 'sprockets'
require 'tilt'

module Sprockets
  class CocoTemplate < Tilt::Template
    self.default_mime_type = 'application/javascript'
    @@default_bare = false

    def self.default_bare
      @@default_bare
    end

    def self.default_bare=(value)
      @@default_bare = value
    end

    def self.engine_initialized?
      defined? ::Coco
    end

    def initialize_engine
      require_template_library 'ruby-coco'
    end

    def prepare
      if !options.key?(:bare)
        options[:bare] = self.class.default_bare
      end
    end

    def evaluate(scope, locals, &block)
      @output ||= Coco.compile(data, options)
    end
  end

  register_engine '.co', CocoTemplate
end
