require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
customer1 = Customer.new("Danny", "Tseng")
customer2 = Customer.new("Tony", "Stark")
customer3 = Customer.new("Tony", "Ja")
customer4 = Customer.new("Tony", "Stark")

restaurant1 = Restaurant.new("McD")
restaurant2 = Restaurant.new("DTF")

customer1.add_review(restaurant1, "Very Very Very Good!!", 5)
customer2.add_review(restaurant1, "So So!!", 2)
customer2.add_review(restaurant2, "Not sure how I feel about this!!", 1)
customer4.add_review(restaurant2, "Love this so much!!", 5)
customer1.add_review(restaurant2, "Good Good!!", 3)
customer3.add_review(restaurant2, "Don't care!", 2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
