require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#restaurant objects
le_foret = Restaurant.new("Le Foret")
hammies = Restaurant.new("Hammies")
brew_pub = Restaurant.new("Brew Pub")

#customer objects
spock = Customer.new("Spock", "the Vulcan")
kirk = Customer.new("James T", "Kirk")
gilligan = Customer.new("Giligan", "Smith")

#review objects
review1 = Review.new("It's tasty")
review2 = Review.new("It sucks")
review3 = Review.new("It's noisy")
review4 = Review.new("It's romantic")
review5 = Review.new("It's expensive")
review6 = Review.new("It's a bargain")
review7 = Review.new("It's where I got engaged")

spock.add_review(hammies, review1, 5)
kirk.add_review(brew_pub, review5, 3)
gilligan.add_review(brew_pub, review7, 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
