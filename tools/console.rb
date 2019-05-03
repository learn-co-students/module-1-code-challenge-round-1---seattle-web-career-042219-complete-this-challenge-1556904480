require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

cust1 = Customer.new("Alex", "Borst", )
cust2 = Customer.new("Ella", "Taber")
cust3 = Customer.new("Rachel", "lastname")

rest1 = Restaurant.new("Chipolte")
rest2 = Restaurant.new("RN74")
rest3 = Restaurant.new("OOink")

review1 = Review.new(cust1, rest1, 3, "it was ok i guess")
review2 = Review.new(cust2, rest1, 2, "bathroom stunk")
review3 = Review.new(cust3, rest2, 5, "i love this place")
review4 = Review.new(cust2, rest3, 1, "ewwwwwwwwww")

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
