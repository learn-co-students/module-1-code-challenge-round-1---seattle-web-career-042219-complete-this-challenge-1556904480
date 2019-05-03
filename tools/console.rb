require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

r1 = Review.new("Bobs Burgers", "Karen", 1, "I want to speak to your manager" )
r2 = Review.new("Krusty Krab", "Patrick Star", 5, "I live underneath a rock")
r3 = Review.new("Little Ceasers", "John Doe", 2, "It tastes like a hot circle of garbage" )
r4 = Review.new("Krusty Krab", "Plankton", 1, "I need the secret ingredient")

def customer_review
  Review.uniq {|reviews| reviews.restaurant}
end

def customer_average
  Reviw.map(&:restaurant).inject(0, &:+) / Review.length
end

binding.pry
0 #leave this here to ensure binding.pry isn't the last line