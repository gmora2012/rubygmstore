# README

This has been a great project for me to begin learning Ruby on Rails.
It's my first time configuring rails and creating an MVC project.
I use a Macbook Pro 13 M1, so I had to do a lot of digging to correctly install ruby on rails.
I spent quite some time troubleshooting varios environment issues, I feel I did a great effort 
for the first time doing hands on work on a rails project and also using a postgresql db.

Below are all of the information regarding this project, about what I was able to complete
and what I couldn't. I feel I made great progress this last 8 days,

**RubyGM project**

* Features completed:
- Implementation of postgresql database,
- Created MVC project and integrated Bootstrap as the main theme, made sure it was responsive as well.
- Created Tables for: Store, Products, Category
- Creating relationships and added foreign keys between Products and Stores tables
- Created tab "page" for each individual view (Store, Category, Products) with their corresponding data tables and CRUD actions.
- For Products Tab: 
    - Search based on name
    - Filter based on category and store
    - Data table with CRUD actions.
- For Categories:
    - Data table
    - Modal for editing any of the records without leaving the page
    - Added all CRUD actions for the Category model
- For Stores:
    - Data Table
    - Modal for editing any of the records without leaving the page
    - Added all CRUD actions for the Category model
- Created a readme page that contains all of this information, so it can be viewed in the browser.
- Added the necesary controller logic for all of the CRUD functionalities, opted to not use the "resources:" internal method 
(which basicaly does the same CRUD actions. according to my research)

* Features not completed:
 - Could not complete the search by keywords
 - Extra validations actions for update, create the form records.
 - Overall more Bootstrap implementation
 - Could not establish the "A Category can have many Keywords, but a Keyword can only be part of one
Category" relationship using a model.

**Overall Application Description:**

* Ruby version
I'm using Ruby 2.7.2p137

* System dependencies
I'm using the following dependencies:
  bootsnap (>= 1.4.4)
  byebug
  capybara (>= 3.26)
  font-awesome-rails
  jbuilder (~> 2.7)
  listen (~> 3.3)
  pg (~> 1.1)
  puma (~> 5.0)
  rack-mini-profiler (~> 2.0)
  rails (~> 6.1.4, >= 6.1.4.1)
  sass-rails (>= 6)
  selenium-webdriver
  spring
  turbolinks (~> 5.2.0)
  tzinfo-data
  view_component
  web-console (>= 4.1.0)
  webdrivers
  webpacker (~> 5.0)

* Configuration
I created a simple Bootstrap MVC web application that brings information 
on three main tabs: Products, Stores, Categories. The data is all related
to each other and inside each page, they all have particular functionalities

* Database creation
I used a Postgresql db, that has three main tables: stores, products, categories.

Here are the relationships between them:
- Products belongs to both: Stores and Categories
- Categories has many products
- Stores has many products

* Database initialization

* How to run the test suite

* Deployment instructions
1. Download source code from git repo
2. Compile the project and install dependencies (bundle install)
3. Create the DB (rails db:create)
4. Generate dummy content -> You can find the querys to run inside of the 
   project directory in the terminal (using command: rails c), by going to this path
   root -> db -> dummy -> start.sql (query's file).
   Run them in the specified order
5. You are now in the admin view
6. From these point, you can create, edit and delete any of the products, stores or categories.
*Please take in mind that the validation options 
for foreign key records (that point to different table id's can't just be deleted)

Created by Gabriel Mora
