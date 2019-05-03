require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

milan = Customer.new("Milan", "Dhar")
frank = Customer.new("Frank", "Leng")
ava = Customer.new("Ava", "Boeker")
akash = Customer.new("Akash", "Patel")
akash2 = Customer.new("Akash", "Reddy")


kedai = Restaurant.new("Kedai Makan")
dtf = Restaurant.new("Din Tai Fung")
do_zo = Restaurant.new("Dough Zone")

r1 = Review.new(milan, kedai, 5, "best restaurant in seattle")
r2 = Review.new(frank, dtf, 3, "too expensive")
r3 = Review.new(akash, do_zo, 5, "good q-bao")
r4 = Review.new(akash, kedai, 5, "long wait")
r5 = Review.new(akash, kedai, 5, "amazing")
r6 = Review.new(ava, do_zo, 3, "mostly ok")
r7 = Review.new(milan, do_zo, 5, "A+ xiao long bao and q bao")

milan.add_review(dtf, "best green beans", 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
