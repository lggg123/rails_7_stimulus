# README

This is a simple rails app and we will begin the process of beginning the construction of user-feedback. To create this app from scratch type `rails new <name of app>` this will create a rails 7 app from scratch. If you want to start on any of these repos simply type this to clone the repo `git clone https://www.github.com/lggg123/rails_7_stimulus.git` remember you cant start the project unless your database is established. To establish your database simply type this in the terminal for your app `rails db:create` then `rails db:migrate` and to run it locally on your computer type `rails s` and navigate to localhost:3000. The app is made by scaffolding inboxes and migrating, then `rails g devise:install` and `rails g devise User`. The view has not been generated and in order to do so simply type `rails g devise:views -v registrations`. Navigate to app/views/devise/registrations/new.html.erb and add this into the code data: { turbo: "false" } on line 3 after url.

If you run into any trouble it is because you probably dont have postgres setup and simply google postgres and follow the instructions on setting it up. 

Another error could be that you are not on rails 7 and ruby 3.0.0

to fix the style and check for syntax errors run this ```bundle exec rubocop```