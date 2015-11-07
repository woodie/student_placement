# student placement
Tool for tracking student placement

Environment
```bash
ruby -v
# ruby 2.2.3p173 (2015-08-18 revision 51636) [x86_64-darwin14]
gem -v
# 2.4.5.1
```

Initial Setup
```bash
rails new reports -d postgresql -T
cd reports
echo "gem 'rspec-rails'"   >> Gemfile
echo "gem 'pry'"           >> Gemfile
echo "gem 'american_date'" >> Gemfile
bundle install
rails g rspec:install
```

Generate Scaffold
```bash
rails g scaffold location name:string zipcode:integer city:string state:string country:string

rails g scaffold student email_address:string username:string \
  first_name:string middle_name:string last_name:string ethnicity:string

rails g scaffold outcome supervisor_name:string supervisor_email_address:string \
  job_title:string department:string start_date:date end_date:date currently_active:boolean \
  salary:integer pay_period:string description:text employer_name:string employer_phone:string \
  employer_email_address:string status:string offer_date:date acceptance_date:date \
  offer_accepted:date job_type_name:string employment_type_name:string industry_name:string \
  student:references location:references
```

