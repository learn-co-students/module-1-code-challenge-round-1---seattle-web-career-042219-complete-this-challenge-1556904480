require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

alex = Customer.new("Alex", "Kitelinger")
john = Customer.new("John", "Tse")
reba = Customer.new("Reba", "Daria")

veggiegrill = Restaurant.new("VeggieGrill")
tacobell = Restaurant.new("Taco Bell")

review1 = alex.add_review(veggiegrill, "Pretty good, much better than I expected, even as a non-vegetarian!", 4)
review2 = alex.add_review(tacobell, "I know it's garbo but honestly I love it", 5)
review3 = alex.add_review(tacobell, "I'm reviewing Taco Bell again because  I love it so much", 5)
review4 = john.add_review(tacobell, "Literally trash, not mexican food, huge menu and all the items are exactly the same", 2)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
