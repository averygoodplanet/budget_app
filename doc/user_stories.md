User Stories
========

Login/Logout
-----------

As a user, I want to be able to login and logout of the app, so that my budget data
can be kept private.

Acceptance Criteria:
* User is able to login and logout of the app using a password

CRUD functionality
---------------

As a user, I want to be able to create, view (read), edit (update), and delete budgets.

Acceptance Criteria:
* CRUD functionality is implemented for budgets.

Slider Effects
----------

As a user, I want to be able to adjust moveable sliders on each category, to adjust
the spending amount and see how this affects the individual category and the
budget overall.

Acceptance Criteria:
* Dragging the category slider updates the dollar amount in the category row.
* Dragging the category slider updates the percentage amount in the category row.
* Changes to the individual category amounts are reflected in the "amount remaining"
  field.

Over-Under Color Coding
--------------------

As a user, I want to be able to easily see if the "amount remaining" (amount
remaining to be allocated to budget categories) is negative or not.

Acceptance Criteria:
* The amount remaining dollar amount will remain green if greater than or equal
to zero, but will turn red if below zero.
