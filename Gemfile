source 'https://rubygems.org'

ruby "1.9.3"

gem 'rails', '3.2.11'

# For rails4-like parameter security
gem 'strong_parameters'
#gem 'rails-observers'

gem 'pg'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem 'uglifier', '>= 1.0.3'

  # for Select2 assets
  gem 'select2-rails'
end


gem 'jquery-rails'

gem "rspec-rails", :group => [:test, :development]
group :test do
  gem "factory_girl_rails"
  gem "guard-rspec"
  
  # Pretty printed test output
  gem 'turn', '0.8.2', :require => false

  # Testing framework
  gem 'rspec', '2.8.0'

  # Fixtures and Mocking
  gem 'factory_girl'#, '2.6.4'

  # Pretty frontend to selenium
  gem 'capybara', '1.1.2'

  # Selenium
  gem 'selenium-webdriver', '2.20.0'
end

# Synchronizes assets to S3
gem 'asset_sync'

# Running development
gem 'foreman', :group => :development

# Authorization controller
gem "cancan"

# Authentication
gem 'omniauth'
gem 'omniauth-openid'
gem 'omniauth-steam'

# For nice pagination (railscasts-254)
gem "kaminari"

# In memory caching system, used by geocoder (and probably other things)
gem 'redis'

# Used for the session store. No more cookie store
gem 'redis-rails'

# Better webserver
gem 'unicorn'

# Steam stuff
gem "steam-condenser", :require => ["steam-condenser/community"]


# group :development do
#   gem "better_errors"
#   gem "binding_of_caller"
# end

gem 'rubyzip', :require => ["zip/zip"]

#gem 'newrelic_rpm', :group => :production
#gem 'newrelic_rpm'
# gem 'newrelic_rpm',  '3.5.5.alpha', :git => 'git://github.com/newrelic/rpm.git', :branch => 'dev'
gem "newrelic_rpm", "~> 3.5.5.540.dev", :group => :production

# gem 'honeybadger'

gem 'psych'

#gem 'acts-as-taggable-on'