source 'https://rubygems.org'

ruby '1.9.3' unless ENV['CI']

gemspec

gem 'rack-cache', :require => 'rack/cache'
gem 'unicorn'

group :development, :test do
  gem 'rack-test'
  gem 'rspec', '~> 2.4'
  gem 'webmock', '~> 1.6'
  gem 'imagesize', '~> 0.1'
  gem 'thin'
end

group :production do
  gem 'newrelic_rpm', :require => false
end
