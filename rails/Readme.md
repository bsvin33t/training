##Day One

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


Add `gem 'rspec-rails', '~> 3.0'` to your Gemfile under the

Run `rails generate rspec:install` to initalize an rspec test suite in your rails project


###Scaffolds

To generate a scaffold we run `rails generate scaffold User first_name:string last_name:string age:integer`

`rake db:migrate`

You might run into errors while running a migration


A solution for that is by adding `gem 'arel', '6.0.0.beta2'` in your gem file

###MVC Pattern and Rails Architecture
Few Useful Articles

[Phusion Passenger Design and Architecture](https://www.phusionpassenger.com/documentation/Design%20and%20Architecture.html)

[Rails Request Response Lifecycle](http://stackoverflow.com/questions/12655604/ruby-rails-web-request-response-lifecycle#answer-12655930)


-------------------------

##Day Two

###Create a web application portal for people to sell their unwanted stuff.

####Tasks:
* Feature an advertisement of the product with the below attributes:
    * Name
    * Description
    * Price
    * Seller ID
    * Email
    * URL for the image

#####Creating your first Model Controller and View

`rails g model ad name:string description:text price:decimal seller_id:integer email:string img_url:string`

`rake db:migrate`

`rails g controller ads`

######Create a `show` page for the ad
    * Add a spec for the `show` action of the ads controller
    * Add a route
    * Implemnt the `show` action in the controller
    * Create a new file show.html.erb under `app/views/ads/`
    * Add details for the view to show the details of the ad

######Create an `index` page to list all the ads present in the site
    * Add a spec for the `index` action in the ads controller
    * Add a route
    * Implement the `index` action in the controller
    * Create a new file index.html.erb under `app/views/ads/`
    * Add details for the view to list all the ads
    * Refactor to use `for`
    * Use `link_to` to provide links to the show page of the item

######Create a `create` page to create/add a new item to the site
    * Add a spec for the create action
    * Add a route
    * Implement the `create` action in the controller
    * Create a new file for new.html.erb under `app/views/ads/`

######Create an `edit` page to edit an item in the site
    * Add a spec for the edit action
    * Add a route
    * Implement the `edit` action in the controller
    * Create a new file for edit.html.erb under `app/views/ads/`
    * Reuse the action and template for `edit`

######Create a `delete` button on the index page to delete items from the site
    * Add spec for the delete action
    * Add a route
    * Implement the `delete` action in the controller
    * Assign a button to use the delete action

######Add Validations for the models
    * Add spec for all the fields of the ads model




#####Adding associations

Create a new model `comments`
    * Associate each item with comments

Form field to add new comments to each item

Display Associated Comments on the show page of the item

######Using rails console, dbconsole, looking at logs, rake tasks to make development a little more easy


#####Bring in Bootstrap to make the site pretty
    * Buttons, Styles and other things


#####User Auth with Devise for the create/update/delete of items
