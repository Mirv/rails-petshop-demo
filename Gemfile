source 'https://rubygems.org'
ruby '2.3.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.7.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.15'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# Twitter Bootstrap CSS Framework
gem 'bootstrap-sass', '~> 3.3.6'
# For beautiful paginations
gem 'kaminari', '~> 1.0.1'
gem 'kaminari-bootstrap', '~> 3.0.1'
# Make forms easier to write
gem 'simple_form', '~> 3.4.0'
# For simple Full-Text search scopes
gem 'pg_search', '~> 2.0.1'
# For pre-build Admin templates
gem 'devise'
gem 'activeadmin', '~> 1.0.0.pre5'
gem 'active_admin_datetimepicker'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'rspec-rails', '~> 3.5'
  gem 'factory_girl_rails', '~> 4.8.0'
end

group :development, :production do
  # Generate Fake infos on seed
  gem 'ffaker'
end

group :test do
  # For acceptance tests
  gem 'capybara', '~> 2.13.0'
  gem 'shoulda-matchers', '~> 3.1'
end

group :production do
  gem 'passenger'
  gem 'rails_12factor'
end
