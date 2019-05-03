require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
ella = Customer.new("ella", "latkovic")
ella = Customer.new("ella", "smith")
nate = Customer.new("nate", "taber")

res1 = Restaurant.new("Anthonys")
res2 = Restaurant.new("Rays")

rev1 = Review.new(ella, res1,3, "Ok place")
rev2 = Review.new(ella, res2,1, "Terrible service")
rev3 = Review.new(nate, res1,4, "Good food")
rev4 = Review.new(nate, res2,5, "Awesome!")
rev5 = Review.new(nate, res2,5, "MORE AWESOME!")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
