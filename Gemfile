# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'sinatra-activerecord'
gem "rspec"
gem "sinatra"
gem 'capybara'
gem 'haml'
gem 'rake'
gem 'pry'

group :production do
  # Use Postgresql for ActiveRecord
  gem 'pg'
end

group :development, :test do
  # Use SQLite for ActiveRecord
  gem 'sqlite3'
end