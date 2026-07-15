# frozen_string_literal: true

require_relative 'lib/aure_ex/version'

Gem::Specification.new do |spec|
  spec.name = 'aure_ex'
  spec.version = AureEx::VERSION
  spec.authors = ['AureEX']
  spec.email = ['dev@aure-ex.com']

  spec.summary = 'SDK oficial da API AureEX para Ruby'
  spec.description = 'SDK oficial da API AureEX para Ruby (tipado via OpenAPI)'
  spec.homepage = 'https://api.aure-ex.com/docs/sdks'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.1.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/grupojrx/aure-ex-ruby'
  spec.metadata['documentation_uri'] = 'https://api.aure-ex.com/docs'

  spec.files = Dir.chdir(__dir__) do
    Dir['lib/**/*', 'LICENSE', 'README.md'].select { |f| File.file?(f) }
  end

  spec.require_paths = ['lib']
end
