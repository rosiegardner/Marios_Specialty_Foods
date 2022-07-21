# Mario's Specialty Food Products!

#### A Web Application using Rails with Active Record, Independent Project.

#### By Rosie Gardner

## Technologies Used

* Ruby
* Rails
* Faker
* Pry
* Gem
* Rspec
* HTML
* Bootstrap
* Sass
* Will_Paginate
* Capybara
* Shoulda-Matchers
* Active Record
* Devise
* Simplecov
* RailsAdmin
* Kaminari


## Setup/Installation Requirements

* https://github.com/rosiegardner/Marios_Specialty_Foods.git
* Clone or download this repository onto your desktop
* Navigate to the top-level of directory
* Open VScode.
* CD into root directory and bundle install project
* Open terminal, run: 
* `rake db:create`
* `rake db:migrate`
* `rake db:test:prepare`
* `rake db:seed`
* `bundle install`
* `rails s`
* In web browser: `http://localhost:3000`
* Create account to view user priviledges.
* To become an admin, open the rails console using text editor of your choice:
* `rails c`
* Locate your account by entering 
* `User.where`
* Once located, update you admin from false to true
* `User.where(email: "YOUR EMAIL HERE").update(admin: true)` 


## Behavior Driven Development / User Stories

#### User
1) A user can sign-up / sign-in / sign-out.
2) A user can view products.
3) A user can view and add reviews to products.
4) A user can see a product with the most reviews.
5) A user can see the three most recently added products.
6) A user who is not signed in will only be allowed reading privileges.

#### Admin
1) An admin can sign-up / sign-in / sign-out.
2) An admin can view products.
3) An admin can view product reviews.
4) An admin can add, update, delete products.
5) An admin can add, update, delete reviews from a products.


## Known Bugs

* Do not use Decimal points when adding / updating cost of products

## License

MIT

Copyright (c) 2022 Rosie Gardner < rosiegardner78@gmail.com >