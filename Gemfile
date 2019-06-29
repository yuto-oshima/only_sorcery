source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use sqlite3 as the database for Active Record
gem 'mysql2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# template engine
gem 'slim-rails'

# localizer
gem 'enum_help'

# auth
gem 'sorcery'

gem 'annotate'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :production do

  # for debug
  gem 'pry', require: false
  gem 'pry-rails', require: 'pry-rails/console'

  # Use Uglifier as compressor for JavaScript assets
  gem 'mini_racer', platforms: :ruby
end

# for development
local_gemfile = File.join(File.dirname(__FILE__), 'Gemfile.development')
instance_eval File.read(local_gemfile) if File.exist? local_gemfile
