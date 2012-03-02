# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'coco/rails/version'

Gem::Specification.new do |s|
  s.name        = 'coco-rails'
  s.version     = Coco::Rails::VERSION
  s.authors     = ['Jacob Swanner']
  s.email       = ['jacob@jacobswanner.com']
  s.homepage    = 'https://github.com/jswanner/coco-rails'
  s.summary     = 'Coco adapter for the Rails asset pipeline.'
  s.description = 'Coco adapter for the Rails asset pipeline.'

  s.add_runtime_dependency 'ruby-coco'
  s.add_runtime_dependency 'railties',  '~> 3.1', '< 4.0'
  s.add_runtime_dependency 'tilt',      '~> 1.1', '!= 1.3.0'
  s.add_runtime_dependency 'sprockets', '~> 2.0'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ['lib']
end
