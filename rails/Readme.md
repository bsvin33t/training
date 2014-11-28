##Creating a new Project

Run `rails new --help` to list all the creation options

Run `rails new learn-rails` to create a new project

We are going to run `rails new learn-rails --skip-test-unit` as we don't want to use test unit as our default testing env

Launch the web server by running `rails server` or `rails s`

To stop the server press `ctrl + c`

##Directory Structure

Type `ls -1p`

### Files and folders

File | Details
-----|--------
Gemfile| Lists all the gems used by the application.
Gemfile.lock | Lists gem versions and dependencies.
README.rdoc | A page for documentation.
app/ | Application folders and files.
config/ |Configuration folders and files.
db/ |Database folders and files.
public/ |Files for web pages that do not contain Ruby code, such as error pages.

Rakefile |Directives for the Rake utility program.
bin/ |Folder for binary (executable) programs.
config.ru |Configuration file for Rack (a software library for web servers).
lib/ |Folder for miscellaneous Ruby code.
log/ |Folder for application server logfiles.
tmp/ |Temporary files created when your application is running.
vendor/ |Folder for Ruby software libraries that are not gems.


## Ruby Gems that are being used in the project

###Gems that are required to use Rails

* actionmailer – framework for email delivery and testing
* actionpack – framework for routing and responding to web requests
* activerecord – framework for connections to databases
* activesupport – utility classes and Ruby library extensions
* bundler – utility to manage gems
* railties – console commands and generators
* sprockets-rails – support for the Rails asset pipeline

###Additional gems present in the default Rails app

* sqlite3 – adapter for the SQLite database
* sass-rails – enables use of the SCSS syntax for stylesheets
* uglifier – JavaScript compressor
* coffee-rails – enables use of the CoffeeScript syntax for JavaScript
* jquery-rails – adds the jQuery JavaScript library
* turbolinks – faster loading of webpages
* jbuilder – utility for encoding JSON data

* rspec - Enables us to write tests using the rspec DSL
