require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new("DaNeil", "coulthard")
cust2 = Customer.new("john", "smith")
cust3 = Customer.new("Katie", "Jones")
cust4 = Customer.new("DaNEIL", "Smith")

rest1 = Restaurant.new("Veggie Grill")
rest2 = Restaurant.new("Pizza Hut")
rest3 = Restaurant.new("Redwing Cafe")
rest4 = Restaurant.new("Starbucks")

rev1 = Review.new(rest2, "Good stuffs", 4, cust1)
rev2 = Review.new(rest2, "PIZZAAASSzzaaaS", 4, cust2)
rev3 = Review.new(rest3, "awesome. super good foods", 4, cust3)
rev4 = Review.new(rest4, "its ok i guess", 4, cust2)

rev5 = cust1.add_review(rest1, "Meh, I've had better", 2)
rev6 = cust2.add_review(rest3, "SOOO AWESOME", 5)
rev7 = cust1.add_review(rest1, "It got Better!", 4)


# Customer.find_all_by_first_name("daneil")

binding.pry
0 

#leave this here to ensure binding.pry isn't the last line
