Dummy shop

We need a web app where users (without any logging in or registration) will be able to add products to cart and then order them. After finishing the order, the cart can’t be edited but user can start new session. To order products user needs to provide address (street, building number, post-code, city - we don’t need to look for edge cases here).

For user there will be 4 views:
list of products - with pagination, sorting by the name and by the price
product page - with details of the product (name, price and description), there user should have an ability to add product to the cart
cart - list of products selected by the user - user can change the amount of each product and submit order
order details - this view will be displayed after submitting order, it should contain order details (address) and list of ordered products. Also there should be an option to start new session.

App should contain admin panel as well. Admin can login with email and password, create and delete other admins; create, edit and delete products; view all pending carts (and sort them by dates of creation and update) and all orders (and sort them by date of creation).

Additional tasks
after submitting order send emails to user and admins with information about a new order
add product commenting system - every user can add comment to product and to other comment (most recent at top, input above added previously comments)
comments can be added without reloading page - commenting system should be “realtime”
display two newest comments for each product on products#index view

Please keep track of your time (we need to know how much time each functionality took). https://toggl.com/ can be helpful.

Automatic tests are required.

When app is done please deploy it to Heroku.

Please let us know when you got it done and send to us repository url, time report and app url (heroku) ;)
