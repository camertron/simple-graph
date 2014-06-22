$:.unshift File.join(File.dirname(__FILE__), 'lib')
require 'simple-graph/version'

Gem::Specification.new do |s|
  s.name     = "simple-graph"
  s.version  = ::SimpleGraph::VERSION
  s.authors  = ["Cameron Dutro"]
  s.email    = ["camertron@gmail.com"]
  s.homepage = "http://github.com/camertron"

  s.description = s.summary = "A simple, no-frills graph implementation."

  s.platform = Gem::Platform::RUBY
  s.has_rdoc = true

  s.require_path = 'lib'
  s.files = Dir["{lib,spec}/**/*", "Gemfile", "History.txt", "README.md", "Rakefile", "simple-graph.gemspec"]
end
