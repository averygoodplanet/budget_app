BudgetSimple
========

Live Example at http://budget-simple.herokuapp.com/
----------------------------------------------

Description
---------

This is my back-end project for the Nashville Software School, allowing users to
login into the website and create, update and save simple budgets in US currency.


Technologies/Skills Demonstrated
---------------------------
* Creating a Rails CRUD app
* Implementing Devise for user sign up and login
* Google Fonts
* Foundation 5
* Confirm-with-reveal plugin https://github.com/agoragames/confirm-with-reveal
* Performing math on dollars and cents in Ruby properly (e.g. in whole cents)
* autoNumeric plugin https://github.com/BobKnothe/autoNumeric
* Client-side data validation for new budget name (cannot be blank)
* Use of fields_for to implement form with nested model (budget has many categories)
* Use of jQuery to calculate Unallocated Funds (income - expenditures) on form load
and form field change
* Use of jQuery to override default form behavior on pressing Enter key within the budget
edit form. Instead of submitting the form, the field is delected, and the amount of
unallocated funds is updated.
* Rspec unit testing
* Cucumber/Capybara integration testing
* Heroku deployment

Ideas for Possible Future Features
----------------------------
* more client-side and back-end data validation (e.g. require expenditures < income)
* add UI sliders to adjust budgeted category amounts
* implement a format-for-printing feature
* implement a format and then send an email with attached budget feature
* add some eye-candy and CSS3 effects to the front-end design
* style amount unallocated red or green based on whether positive or negative
* allow the user to create, edit, and delete categories (i.e. category names)
* add the ability to drag-and-drop categories into a different vertical order
* make a spending register where users can make spending entries against a particular
budget for each category, so they can track actual vs. intended spending on each category.
* import transaction information from a bank
* plot a graph of actual spending over time