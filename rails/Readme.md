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