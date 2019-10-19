# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'couverture/version'

# rubocop:disable Metrics/LineLength
Gem::Specification.new do |spec|
  spec.name          = 'couverture'
  spec.version       = Couverture::VERSION
  spec.authors       = ['Madison Solarana']
  spec.summary       = 'Converts Xcode coverage data to Cobertura XML'
  spec.description   = 'Converts Xcode coverage data to Cobertura XML from profdata, xcresult bundles, or xccov json'
  spec.homepage      = 'https://github.com/madsolar8582/couverture'
  spec.license       = 'LGPLv3'
  spec.executables   = %w[couverture]
  spec.files         = Dir['lib/**/*'] + %w[README.md LICENSE.md]
  spec.test_files    = Dir['spec/**/*']
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.0.0'
  spec.metadata['allowed_push_host'] = 'https://rubygems.pkg.github.com/'
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/madsolar8582/couverture'
  spec.metadata['changelog_uri'] = 'https://github.com/madsolar8582/couverture/blob/master/CHANGELOG.md'
  spec.metadata['documentation_uri'] = 'https://github.com/madsolar8582/couverture' # update to GitHub pages
  spec.metadata['bug_tracker_uri'] = 'https://github.com/madsolar8582/couverture/issues'

  # Development Dependencies
  spec.add_development_dependency 'debase', '~> 0.2', '>= 0.2.4.1'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rdoc', '~> 6.2'
  spec.add_development_dependency 'rspec', '~> 3.9'
  spec.add_development_dependency 'rubocop', '~> 0.75'
  spec.add_development_dependency 'rubocop-performance', '~> 1.5'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.36'
  spec.add_development_dependency 'ruby-debug-ide', '~> 0.7'
  spec.add_development_dependency 'simplecov', '~> 0.17'
end
# rubocop:enable Metrics/LineLength
