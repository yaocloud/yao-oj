# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yao/oj/version'

Gem::Specification.new do |spec|
  spec.name          = "yao-oj"
  spec.version       = Yao::Oj::VERSION
  spec.authors       = ["Uchio KONDO"]
  spec.email         = ["udzura@udzura.jp"]

  spec.summary       = %q{Yao's http response parser using oj.}
  spec.description   = %q{Yao's http response parser using oj.}
  spec.homepage      = "https://github.com/yaocloud/yao-oj"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'yao', '~> 0.2.0.rc1'
  spec.add_dependency 'faraday_middleware-parse_oj', '~> 0.3.0'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "test-unit", ">= 3"
  spec.add_development_dependency "power_assert"
end
