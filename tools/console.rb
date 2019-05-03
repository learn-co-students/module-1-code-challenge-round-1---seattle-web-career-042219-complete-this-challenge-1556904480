require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jeff = Customer.new("Jeff", "Jacobs")
alex = Customer.new("Alex", "Freen")
larry = Customer.new("Larry", "Bird")
bruce = Customer.new("Bruce", "Lee")

wasabi = Restaurant.new("Wasabi")
buffalo = Restaurant.new("Buffalo Wild Wings")

review1 = jeff.add_review("Wasabi", 5, "I love sushi!")
review2 = alex.add_review("Wasabi", 3, "I have tried better sushi.")
review3 = larry.add_review("Buffalo Wild Wings", 4, "Wings are good!")
review4 = bruce.add_review("Buffalo Wild Wings", 1, "Had to wait 45 min. for 2 chicken wings.")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line