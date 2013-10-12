Gem::Specification.new do |spec|
  spec.name          = 'lita-roll'
  spec.version       = '1.0.0'
  spec.authors       = ['Jay Hayes']
  spec.email         = ['ur@iamvery.com']
  spec.description   = %q{Lita handler for making decisions}
  spec.summary       = %q{Lita handler for making decisions}
  spec.homepage      = 'https://github.com/iamvery/lita-roll'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'lita', '~> 2.0'

  spec.add_development_dependency 'rspec', '~> 2.14'
  spec.add_development_dependency 'pry'
end
