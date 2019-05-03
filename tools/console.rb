require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#DATA
cust1 = Customer.new("Tyler", "Fox")
cust2 = Customer.new("Trigger", "Max")

rest1 = Restaurant.new("Papas House")
rest2 = Restaurant.new("Sardinis")
rest3 = Restaurant.new("Ho lota Cheese")

rev1 = Review.new(cust1, rest1, 5, "Simply Delightful.")
rev2 = Review.new(cust1, rest2, 3, "I have had better.")
rev3 = Review.new(cust2, rest1, 4, "What I would do for another bite.")


#TESTS
Customer.all
Restaurant.all
Review.all

cust2.num_reviews
cust2.add_review(rest1, "Oh my word", 5)
cust2.num_reviews

cust1.restaurants
cust2.add_review(rest1, "Oh my word", 5)

rest1.customers

rest1.reviews

rest1.average_star_rating
rest2.average_star_rating

rest1.longest_review

Customer.find_by_name("Tyler Fox")

Customer.find_all_by_first_name("Tyler")

Customer.all_names

Restaurant.find_by_name("Papas House")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line