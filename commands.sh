gem install bundler
echo "source 'https://rubygems.org'

gem 'bundler', '>=1.3.5'
gem 'rails', '>=4.0'
gem 'unicorn'" >> Gemfile
cat Gemfile # Just to make sure you get the above
bundle install
