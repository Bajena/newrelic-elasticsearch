# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'newrelic/elasticsearch/version'

Gem::Specification.new do |spec|
  spec.name          = "newrelic-elasticsearch"
  spec.version       = NewRelic::Elasticsearch::VERSION
  spec.authors       = ["Stephen Prater"]
  spec.email         = ["me@stephenprater.com"]

  spec.summary       = %q{Provides NewRelic datastore instrumentation for Elasticsearch}
  spec.description   = %q{Not for monitoring Elasticsearch, but for instrumenting it as
                          as a datastore in the databases tab in NewRelic}
  spec.homepage      = "http://github.com/goldstar/newrelic-elasticsearch"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "minitest", "~> 4.7.5"
  spec.add_development_dependency "webmock"
  # A Ruby library for testing against different versions of dependencies
  spec.add_development_dependency "appraisal"

  spec.add_dependency "newrelic_rpm"
  spec.add_dependency "elasticsearch"
end
