require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("dan", "coul")
c2 = Customer.new("john", "smith")

r1 = Restaurant.new("Veggie Grill")
r2 = Restaurant.new("Pizza Hut")
r3 = Restaurant.new("Taco Chukis")

re1 = Review.new(r1.name, "awesome", 4, c2)
re2 = c1.add_review(r2, "meh", 2, c1)
re2 = c1.add_review(r3, "meh", 2, c1)

puts "Return the total number of reviews that a customer(c1) has authored"
puts c1.num_reviews

puts "Return a **unique** array of all restaurants a customer(c1) has reviewed"
puts c1.restaurants

binding.pry
0 #leave this here to ensure binding.pry isn't the last line