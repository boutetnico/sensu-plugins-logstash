lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'date'

require_relative 'lib/sensu-plugins-logstash'

Gem::Specification.new do |s|
  s.authors                = ['Sensu Plugins and contributors']
  # s.cert_chain             = ['certs/sensu-plugins.pem']
  s.date                   = Date.today.to_s
  s.description            = 'This plugin provides native logstash instrumentation
                              for monitoring, including: a handler for sending events
                              to logstash.'
  s.email                  = '<sensu-users@googlegroups.com>'
  s.executables            = Dir.glob('bin/**/*.rb').map { |file| File.basename(file) }
  s.files                  = Dir.glob('{bin,lib}/**/*') + %w[LICENSE README.md CHANGELOG.md]
  s.homepage               = 'https://github.com/boutetnico/sensu-plugins-logstash'
  s.license                = 'MIT'
  s.metadata               = { 'maintainer'         => '@mattyjones',
                               'development_status' => 'active',
                               'production_status'  => 'unstable - testing recommended',
                               'release_draft'      => 'false',
                               'release_prerelease' => 'false' }
  s.name                   = 'sensu-plugins-logstash-boutetnico'
  s.platform               = Gem::Platform::RUBY
  s.post_install_message   = 'You can use the embedded Ruby by setting EMBEDDED_RUBY=true in /etc/default/sensu'
  s.require_paths          = ['lib']
  s.required_ruby_version  = '>= 2.4.0'
  s.summary                = 'Sensu plugins for working with logstash'
  s.test_files             = s.files.grep(%r{^(test|spec|features)/})
  s.version                = SensuPluginsLogstash::Version::VER_STRING

  s.add_runtime_dependency 'json',         '~> 2.3.1'
  s.add_runtime_dependency 'redis',        '~> 3.2.1'
  s.add_runtime_dependency 'rest-client',  '~> 2.1.0'
  s.add_runtime_dependency 'sensu-plugin', '~> 4.0'

  s.add_development_dependency 'bundler',                   '~> 2.1'
  s.add_development_dependency 'codeclimate-test-reporter', '~> 1.0'
  s.add_development_dependency 'github-markup',             '~> 3.0'
  s.add_development_dependency 'pry',                       '~> 0.13'
  s.add_development_dependency 'rake',                      '~> 13.0'
  s.add_development_dependency 'redcarpet',                 '~> 3.5'
  s.add_development_dependency 'rspec',                     '~> 3.9'
  s.add_development_dependency 'rubocop',                   '~> 0.85.0'
  s.add_development_dependency 'webmock',                   '~> 3.8.3'
  s.add_development_dependency 'yard',                      '~> 0.9.25'
end
