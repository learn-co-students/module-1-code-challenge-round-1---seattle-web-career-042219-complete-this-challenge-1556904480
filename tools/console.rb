require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

rest1 = Restaurant.new("bungos")
rest2 = Restaurant.new("chungos")
cust1 = Customer.new("Tyler", "Landry")
cust2 = Customer.new("Ryan", "Gross")
rev1 = Review.new("bungos", "good place", 5)




# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
