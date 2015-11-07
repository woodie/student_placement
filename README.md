# student placement
Tool for tracking student placement

# ruby -v
# ruby 2.2.3p173 (2015-08-18 revision 51636) [x86_64-darwin14]
# gem -v
# 2.4.5.1

Initial Setup
    rails new reports -d postgresql -T
    cd reports
    echo "gem 'rspec-rails'"   >> Gemfile
    echo "gem 'pry'"           >> Gemfile
    echo "gem 'american_date'" >> Gemfile
    bundle install
    rails g rspec:install
