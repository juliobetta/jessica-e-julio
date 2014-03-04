source 'http://rubygems.org'

ruby '2.0.0'
gem 'rails', '3.2.15'

gem 'iconv', :platform => :mri_20


# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'



# Gems used only for assets and not required
# in production environments by default.

group :assets do
  gem 'sass-rails', :git => 'https://github.com/rails/sass-rails.git', :branch => '3-2-stable'
  gem 'bootstrap-sass','~> 2.2.0'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'compass-rails', '~> 1.0.1'
  gem 'asset_sync', '~> 1.0.0'
end

gem 'twitter-bootstrap-rails', '~> 2.2.0'
gem 'jquery-rails'

gem 'devise'
gem 'haml-rails'
gem 'mysql2'
gem 'simple_form'
gem 'nested_form'
gem 'rails_admin', :git => 'https://github.com/sferik/rails_admin.git', :branch => 'rails-3.x'
gem 'paperclip'
gem 'aws-sdk'
gem 'squeel'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'html2haml'
  gem 'hub', :require=>nil
  gem 'quiet_assets'
  gem 'rails_layout'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'thin'
end

group :production do
  gem 'newrelic_rpm'
end

group :test do
  gem 'capybara', '2.2.1'
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
end

