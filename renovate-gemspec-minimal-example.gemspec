Gem::Specification.new do |spec|
  spec.name          = "renovate-gemspec-example"
  spec.version       = '1.0.0'
  spec.authors       = ["reggaemuffin"]
  spec.email         = ["reggaemuffin@xxx.com"]

  spec.summary       = %q{A minimal example for a gemspec file to parse}
  spec.description   = %q{A minimal example for a gemspec file to parse}
  spec.homepage      = "https://github.com/renovatebot/renovate/issues/10616"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(spec|images)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.1.0' # keyword args

  spec.add_runtime_dependency 'run-pinned-dep', '1.0'
  spec.add_runtime_dependency 'run-approx-dep', '~> 1.6'
  spec.add_runtime_dependency 'run-greater-than-dep', '>= 1.6'
  spec.add_runtime_dependency 'run-multi-dep', '~> 6.0', '>= 5.0'
  
  spec.add_dependency 'pinned-dep', '1.0'
  spec.add_dependency 'approx-dep', '~> 1.6'
  spec.add_dependency 'greater-than-dep', '>= 1.6'
  spec.add_dependency 'multi-dep', '~> 6.0', '>= 5.0'
  
  spec.add_development_dependency 'dev-pinned-dep', '1.0'
  spec.add_development_dependency 'dev-approx-dep', '~> 1.6'
  spec.add_development_dependency 'dev-greater-than-dep', '>= 1.6'
  spec.add_development_dependency 'dev-multi-dep', '~> 6.0', '>= 5.0'
end
