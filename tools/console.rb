require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

mike_honcho = Customer.new(first_name: "Mike", last_name: "Honcho")
seymore_bu = Customer.new(first_name: "Seymore", last_name: "Bu")
steve_smith = Customer.new(first_name: "Steve", last_name: "Smith")

pizza_palace = Restaurant.new(name: "Pizza Palace")
petes_sandwiches = Restaurant.new(name: "Pete's Sandwiches")
soup_city = Restaurant.new(name: "Soup City")

review1 = Review.new(customer: mike_honcho, restaurant: pizza_palace, review: "This place is legit yo. Stars: *****")
review2 = Review.new(customer: mike_honcho, restaurant: petes_sandwiches, review: "This not so legit. Stars: ***")
review3 = Review.new(customer: seymore_bu, restaurant: petes_sandwiches, review: "Delicious: ****")
review4 = Review.new(customer: seymore_bu, restaurant: soup_city, review: "Not great: *")
review5 = Review.new(customer: steve_smith, restaurant: soup_city, review: "Hate it: **")
review6 = Review.new(customer: mike_honcho, restaurant: pizza_palace, review: "I been here before but this stuff smacks. Stars: *****")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
