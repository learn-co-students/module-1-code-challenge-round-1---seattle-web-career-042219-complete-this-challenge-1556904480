require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

rachel = Customer.new("Rachel", "Williams")
colin = Customer.new("Colin", "Kyle")
joe = Customer.new("Joe", "Klein")
rachel2 = Customer.new("Rachel", "Jones")
colin2 = Customer.new("Colin", "Kyle")

rest1 = Restaurant.new("In-n-out")
rest2 = Restaurant.new("Burger King")
rest3 = Restaurant.new("Mcdonalds")
rest4 = Restaurant.new("Mcdonalds")

rev1 = Review.new(rachel, rest1, "Great place!", 5)
rev2 = Review.new(colin, rest2, "Bad Service", 2)
rev3 = Review.new(joe, rest3, "Decent", 3)
rev4 = Review.new(rachel, rest2, "Okay Service", 4)
rev5 = Review.new(joe, rest3, "Better this time", 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
